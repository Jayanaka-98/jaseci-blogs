"""Events timeline.

One chronological spine, newest first, of what the community has run and shown
up to. Large nodes are curated events from docs/blog/.events.yml, each carrying
the posts written about it; small nodes are Community-category posts no event
claimed. GetCommunityTimeline does the merging, ordering and year-grouping
server-side, so this page only renders.

NOTE on file shape: the timeline markup is inlined rather than living in
components/*.cl.jac for the same reason PostBody is, the current Jac compiler
emits literal source paths into JS imports which vite can't resolve.
"""

sv import from ...main { GetCommunityTimeline }

cl import from "@jac/runtime" { Link }


cl {
    def post_row(p: any) -> JsxElement {
        # One write-up under an event card.
        return <li key={p["slug"]} className="tl-post-row">
            <Link to={f"/blog/posts/{p['slug']}"} className="tl-post-link">
                <span className="tl-post-title">{p["title"]}</span>
                <span className="tl-post-meta muted small">
                    {p["authors"] and p["authors"][0]["name"] or "Jaseci"}
                    {" · "}
                    {p["date_short"]}
                    {" · "}
                    {p["reading_minutes"]} min
                    {p["is_repost"] and <span className="tl-repost">repost</span>}
                </span>
            </Link>
        </li>;
    }


    def event_card(e: any) -> JsxElement {
        n_posts = int(e["post_count"]);
        writeups_label = "Written about this" if n_posts == 1 else str(n_posts) + " write-ups";
        return <article className="tl-card">
            <div className="tl-card-head">
                <div className="tl-card-heading">
                    <span className="tl-kind">{e["kind"]}</span>
                    <h3 className="tl-title">
                        {e["url"] and (
                            <a href={e["url"]} target="_blank" rel="noopener">{e["title"]}</a>
                        ) or e["title"]}
                    </h3>
                    <p className="tl-meta muted small">
                        <span className="tl-date">{e["date_label"]}</span>
                        {e["location"] and <span className="tl-where">{e["location"]}</span>}
                    </p>
                </div>
            </div>

            {e["cover"] and (
                <div className="tl-cover">
                    <img src={e["cover"]} alt="" loading="lazy" />
                </div>
            )}

            {e["summary"] and <p className="tl-summary">{e["summary"]}</p>}

            {e["stats"] and (
                <ul className="tl-stats">
                    {[
                        <li key={s["label"]} className="tl-stat">
                            <span className="tl-stat-value">{s["value"]}</span>
                            <span className="tl-stat-label">{s["label"]}</span>
                        </li>
                        for s in e["stats"]
                    ]}
                </ul>
            )}

            {e["gallery"] and (
                <ul className="tl-gallery">
                    {[
                        <li key={g}><img src={g} alt="" loading="lazy" /></li>
                        for g in e["gallery"]
                    ]}
                </ul>
            )}

            {e["posts"] and (
                <div className="tl-writeups">
                    <p className="tl-writeups-label eyebrow">{writeups_label}</p>
                    <ul className="tl-post-list">
                        {[post_row(p) for p in e["posts"]]}
                    </ul>
                </div>
            )}
        </article>;
    }


    def post_card(e: any) -> JsxElement {
        # A Community post no event claimed, deliberately lighter than an event
        # card so the spine reads as "big moment / small moment" at a glance.
        p = e["post"];
        return <article className="tl-note">
            <p className="tl-meta muted small">
                <span className="tl-date">{p["date_long"]}</span>
                {p["is_repost"] and p["repost_source"] and (
                    <span className="tl-where">via {p["repost_source"]}</span>
                )}
            </p>
            <h3 className="tl-note-title">
                <Link to={f"/blog/posts/{p['slug']}"}>{p["title"]}</Link>
            </h3>
            <p className="tl-note-byline muted small">
                {p["authors"] and (
                    <Link to={f"/blog/authors/{p['authors'][0]['id']}"} className="byline-author small">
                        {p["authors"][0]["avatar"] and (
                            <img src={p["authors"][0]["avatar"]} alt="" width={20} height={20} className="byline-avatar" />
                        )}
                        <span>{p["authors"][0]["name"]}</span>
                    </Link>
                )}
                <span className="muted small">{p["reading_minutes"]} min read</span>
            </p>
        </article>;
    }


    def:pub page() -> JsxPage {
        has loading: bool = True;
        has years: any = [];
        has error: str = "";

        can with entry {
            document.title = "Events · Jaseci Blogs";
        }

        async can with entry {
            window.scrollTo(0, 0);
            start: int = int(Date.now());
            try {
                result = root spawn GetCommunityTimeline();
                if result.reports and len(result.reports) > 0 {
                    data = result.reports[0];
                    if data["ok"] {
                        years = data["years"];
                    } else {
                        error = "Could not load the events timeline.";
                    }
                }
            } except Exception {
                error = "Network error.";
            }
            min_ms: int = 750;
            try {
                min_ms = int(window.__BLOG_CONFIG["minLoadingMs"]);  # jac:ignore[E1030]
            } except Exception {
                _ignore = None;
            }
            remaining: int = min_ms - (int(Date.now()) - start);
            if remaining > 0 {
                setTimeout(lambda -> None { loading = False; }, remaining);
            } else {
                loading = False;
            }
        }

        if loading {
            return <>
                <div className="route-progress" />
                <section className="container">
                    <header style={{"padding": "3rem 0 2rem"}}>
                        <span className="skeleton skeleton-line short" />
                        <span className="skeleton skeleton-title" style={{"height": "3rem"}} />
                        <span className="skeleton skeleton-line medium" />
                    </header>
                    {[
                        <div key={i} style={{"padding": "1.5rem 0"}}>
                            <span className="skeleton skeleton-line short" />
                            <span className="skeleton" style={{"display": "block", "height": "12rem", "borderRadius": "14px", "margin": "1rem 0"}} />
                            <span className="skeleton skeleton-line long" />
                        </div>
                        for i in range(2)
                    ]}
                </section>
            </>;
        }
        if error {
            return <section className="container narrow" style={{"padding": "4rem 0"}}>
                <p className="muted">{error}</p>
            </section>;
        }

        return <article>
            <section className="container">
                <header className="tl-head" style={{"padding": "3rem 0 2rem"}}>
                    <p className="eyebrow">Community</p>
                    <h1 className="display">Events</h1>
                    <p className="post-deck">
                        Hackathons, campus programs and meetups across the Jaseci
                        ecosystem, each with the writing that came out of it.
                    </p>
                </header>
            </section>

            <section className="community-timeline">
                <div className="container">
                    {years and (
                        <div className="tl-years">
                            {[
                                <section key={group["year"]} className="tl-year-block">
                                    <h2 className="tl-year">{group["year"]}</h2>
                                    <ol className="tl-list">
                                        {[
                                            <li
                                                key={e["id"]}
                                                className={"tl-entry is-event" if e["type"] == "event" else "tl-entry is-note"}
                                            >
                                                <span className="tl-dot" aria-hidden="true" />
                                                {event_card(e) if e["type"] == "event" else post_card(e)}
                                            </li>
                                            for e in group["entries"]
                                        ]}
                                    </ol>
                                </section>
                                for group in years
                            ]}
                        </div>
                    ) or <p className="muted">Nothing on the timeline yet.</p>}
                </div>
            </section>

            <section className="community-cta">
                <div className="container narrow">
                    <h2>Were you there?</h2>
                    <p className="muted">
                        Recaps, project write-ups and lessons from running an event are all
                        fair game. Post it here and it lands on this timeline.
                    </p>
                    <div className="community-cta-actions">
                        <Link to="/submit" className="cta-pill">Write it up</Link>
                        <a href="https://discord.com/invite/6j3QNdtcN6" target="_blank" rel="noopener" className="community-cta-link">
                            Join the Discord →
                        </a>
                    </div>
                </div>
            </section>
        </article>;
    }
}
