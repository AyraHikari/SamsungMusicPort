.class public Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/view/NoNetworkViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

.field private final b:Lcom/samsung/android/app/music/view/NoNetworkViewController$ContentView;

.field private final c:Lcom/samsung/android/app/music/network/NetworkManager;

.field private d:I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end field

.field private e:I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end field

.field private f:I
    .annotation build Landroid/support/annotation/DimenRes;
    .end annotation
.end field

.field private g:I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end field

.field private h:Z

.field private i:Lcom/samsung/android/app/music/view/NoNetworkViewController$RetryListener;

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/view/NoNetworkViewController$ContentView;Lcom/samsung/android/app/music/network/NetworkManager;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/music/view/NoNetworkViewController$ContentView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/music/network/NetworkManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f130121

    .line 55
    iput v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->d:I

    const v0, 0x7f130123

    .line 58
    iput v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->e:I

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->f:I

    .line 64
    iput v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->g:I

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->h:Z

    .line 71
    iput-boolean v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->j:Z

    .line 73
    iput-boolean v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->k:Z

    .line 76
    iput-object p1, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->b:Lcom/samsung/android/app/music/view/NoNetworkViewController$ContentView;

    .line 77
    iput-object p2, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->c:Lcom/samsung/android/app/music/network/NetworkManager;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;)Lcom/samsung/android/app/music/view/NoNetworkViewController$ContentView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->b:Lcom/samsung/android/app/music/view/NoNetworkViewController$ContentView;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;)Lcom/samsung/android/app/music/network/NetworkManager;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->c:Lcom/samsung/android/app/music/network/NetworkManager;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;)Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->a:Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    return-object p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->d:I

    return p0
.end method

.method static synthetic e(Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->e:I

    return p0
.end method

.method static synthetic f(Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;)Lcom/samsung/android/app/music/view/NoNetworkViewController$RetryListener;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->i:Lcom/samsung/android/app/music/view/NoNetworkViewController$RetryListener;

    return-object p0
.end method

.method static synthetic g(Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->j:Z

    return p0
.end method

.method static synthetic h(Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->f:I

    return p0
.end method

.method static synthetic i(Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->g:I

    return p0
.end method

.method static synthetic j(Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->h:Z

    return p0
.end method

.method static synthetic k(Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->k:Z

    return p0
.end method


# virtual methods
.method public a(I)Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 86
    iput p1, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->d:I

    return-object p0
.end method

.method public a(Lcom/samsung/android/app/music/view/NoNetworkViewController$RetryListener;)Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->i:Lcom/samsung/android/app/music/view/NoNetworkViewController$RetryListener;

    return-object p0
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;)Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->a:Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    return-object p0
.end method

.method public a(Z)Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;
    .locals 0

    .line 111
    iput-boolean p1, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->h:Z

    return-object p0
.end method

.method public a()Lcom/samsung/android/app/music/view/NoNetworkViewController;
    .locals 2

    .line 126
    new-instance v0, Lcom/samsung/android/app/music/view/NoNetworkViewController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/view/NoNetworkViewController;-><init>(Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;Lcom/samsung/android/app/music/view/NoNetworkViewController$1;)V

    return-object v0
.end method

.method public b(I)Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 91
    iput p1, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->e:I

    return-object p0
.end method

.method public b(Z)Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;
    .locals 0

    .line 116
    iput-boolean p1, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->j:Z

    return-object p0
.end method

.method public c(I)Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 96
    iput p1, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->f:I

    return-object p0
.end method

.method public c(Z)Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;
    .locals 0

    .line 121
    iput-boolean p1, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->k:Z

    return-object p0
.end method

.method public d(I)Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 101
    iput p1, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->g:I

    return-object p0
.end method
