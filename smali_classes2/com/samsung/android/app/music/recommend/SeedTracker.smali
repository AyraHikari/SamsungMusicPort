.class public Lcom/samsung/android/app/music/recommend/SeedTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/recommend/SeedTracker$TrackCondition;
    }
.end annotation


# static fields
.field private static a:Lcom/samsung/android/app/music/recommend/SeedTracker$TrackCondition;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/samsung/android/app/music/recommend/SeedTracker$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/recommend/SeedTracker$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/recommend/SeedTracker;->a:Lcom/samsung/android/app/music/recommend/SeedTracker$TrackCondition;

    return-void
.end method

.method static synthetic a()Lcom/samsung/android/app/music/recommend/SeedTracker$TrackCondition;
    .locals 1

    .line 27
    sget-object v0, Lcom/samsung/android/app/music/recommend/SeedTracker;->a:Lcom/samsung/android/app/music/recommend/SeedTracker$TrackCondition;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/recommend/PlaylistSeed;I)Lio/reactivex/Observable;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/music/recommend/PlaylistSeed;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/music/recommend/PlaylistSeed;",
            "I)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 118
    new-instance v0, Lcom/samsung/android/app/music/recommend/SeedTracker$5;

    invoke-direct {v0}, Lcom/samsung/android/app/music/recommend/SeedTracker$5;-><init>()V

    .line 119
    invoke-virtual {v0}, Lcom/samsung/android/app/music/recommend/SeedTracker$5;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 118
    invoke-static {p0, p1, p2, v0, p3}, Lcom/samsung/android/app/music/recommend/SeedTracker;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;I)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/recommend/Seed;I)Lio/reactivex/Observable;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/music/recommend/Seed;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/music/recommend/Seed;",
            "I)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 124
    new-instance v0, Lcom/samsung/android/app/music/recommend/SeedTracker$6;

    invoke-direct {v0}, Lcom/samsung/android/app/music/recommend/SeedTracker$6;-><init>()V

    .line 125
    invoke-virtual {v0}, Lcom/samsung/android/app/music/recommend/SeedTracker$6;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 124
    invoke-static {p0, p1, p2, v0, p3}, Lcom/samsung/android/app/music/recommend/SeedTracker;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;I)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;I)Lio/reactivex/Observable;
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/reflect/Type;",
            "I)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 131
    new-instance v6, Lcom/samsung/android/app/music/recommend/SeedTracker$7;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/recommend/SeedTracker$7;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Object;I)V

    invoke-static {v6}, Lio/reactivex/Observable;->a(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/recommend/Seed;",
            ">;"
        }
    .end annotation

    const-string v0, "key_user_search_click_seeds"

    .line 92
    new-instance v1, Lcom/samsung/android/app/music/recommend/SeedTracker$2;

    invoke-direct {v1}, Lcom/samsung/android/app/music/recommend/SeedTracker$2;-><init>()V

    .line 93
    invoke-virtual {v1}, Lcom/samsung/android/app/music/recommend/SeedTracker$2;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 92
    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/music/recommend/SeedTracker;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/List;
    .locals 0

    .line 27
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/recommend/SeedTracker;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 49
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/app/music/recommend/SeedTracker;->b(Landroid/content/Context;Ljava/lang/String;J)Lio/reactivex/Observable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/app/music/util/rx/SubscriberAdapter;

    invoke-direct {p1}, Lcom/samsung/android/app/music/util/rx/SubscriberAdapter;-><init>()V

    .line 50
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 61
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/app/music/recommend/SeedTracker;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/app/music/util/rx/SubscriberAdapter;

    invoke-direct {p1}, Lcom/samsung/android/app/music/util/rx/SubscriberAdapter;-><init>()V

    .line 62
    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;J)Lio/reactivex/Observable;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "J)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 67
    new-instance v0, Lcom/samsung/android/app/music/recommend/PlaylistSeed;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/app/music/recommend/PlaylistSeed;-><init>(Ljava/lang/String;J)V

    const-string p1, "key_user_playlist_click_seeds"

    const/16 p2, 0xa

    .line 68
    invoke-static {p0, p1, v0, p2}, Lcom/samsung/android/app/music/recommend/SeedTracker;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/recommend/PlaylistSeed;I)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "key_user_search_click_seeds"

    .line 73
    new-instance v1, Lcom/samsung/android/app/music/recommend/Seed;

    invoke-direct {v1, p1, p2, p3}, Lcom/samsung/android/app/music/recommend/Seed;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xa

    invoke-static {p0, v0, v1, p1}, Lcom/samsung/android/app/music/recommend/SeedTracker;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/recommend/Seed;I)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/recommend/Seed;",
            ">;"
        }
    .end annotation

    const-string v0, "key_user_lyric_view_seeds"

    .line 97
    new-instance v1, Lcom/samsung/android/app/music/recommend/SeedTracker$3;

    invoke-direct {v1}, Lcom/samsung/android/app/music/recommend/SeedTracker$3;-><init>()V

    .line 98
    invoke-virtual {v1}, Lcom/samsung/android/app/music/recommend/SeedTracker$3;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 97
    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/music/recommend/SeedTracker;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/List;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 157
    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 158
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    .line 161
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0, p2}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    .line 163
    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object p1
.end method

.method public static c(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/recommend/PlaylistSeed;",
            ">;"
        }
    .end annotation

    const-string v0, "key_user_playlist_click_seeds"

    .line 102
    new-instance v1, Lcom/samsung/android/app/music/recommend/SeedTracker$4;

    invoke-direct {v1}, Lcom/samsung/android/app/music/recommend/SeedTracker$4;-><init>()V

    .line 104
    invoke-virtual {v1}, Lcom/samsung/android/app/music/recommend/SeedTracker$4;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 102
    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/music/recommend/SeedTracker;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
