.class Lcom/samsung/android/app/music/search/SearchableFragment$QueryTextChangeHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/search/SearchableFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryTextChangeHandler"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/search/SearchableFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/search/SearchableFragment;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/samsung/android/app/music/search/SearchableFragment$QueryTextChangeHandler;->a:Lcom/samsung/android/app/music/search/SearchableFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/search/SearchableFragment;Lcom/samsung/android/app/music/search/SearchableFragment$1;)V
    .locals 0

    .line 238
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/search/SearchableFragment$QueryTextChangeHandler;-><init>(Lcom/samsung/android/app/music/search/SearchableFragment;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 245
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchableFragment$QueryTextChangeHandler;->a:Lcom/samsung/android/app/music/search/SearchableFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/search/SearchableFragment;->g()I

    move-result p1

    .line 246
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchableFragment$QueryTextChangeHandler;->a:Lcom/samsung/android/app/music/search/SearchableFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/search/SearchableFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v0

    .line 247
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;

    if-eqz v1, :cond_0

    .line 248
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;

    iget-object v2, p0, Lcom/samsung/android/app/music/search/SearchableFragment$QueryTextChangeHandler;->a:Lcom/samsung/android/app/music/search/SearchableFragment;

    invoke-static {v2, p1}, Lcom/samsung/android/app/music/search/SearchableFragment;->a(Lcom/samsung/android/app/music/search/SearchableFragment;I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;->a(Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)V

    .line 250
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->forceLoad()V

    return-void
.end method
