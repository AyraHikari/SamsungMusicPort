.class public Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;,
        Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/music/view/NoNetworkViewController;

.field private b:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

.field private c:Landroid/view/View;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 35
    sget-object p1, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;->ENTERED:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->b:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    .line 43
    new-instance p1, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1;-><init>(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->f:Landroid/os/Handler;

    .line 62
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->d()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    sget-object p1, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;->ENTERED:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->b:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    .line 43
    new-instance p1, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1;-><init>(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->f:Landroid/os/Handler;

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->d()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    sget-object p1, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;->ENTERED:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->b:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    .line 43
    new-instance p1, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1;-><init>(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->f:Landroid/os/Handler;

    .line 72
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->d()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 35
    sget-object p1, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;->ENTERED:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->b:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    .line 43
    new-instance p1, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$1;-><init>(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->f:Landroid/os/Handler;

    .line 77
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->d()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->f()V

    return-void
.end method

.method private a(Lcom/samsung/android/app/music/network/NetworkManager;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    return-void

    .line 141
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Should add contentView !!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 139
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Should add controller !!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;)Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->b:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;)Lcom/samsung/android/app/music/view/NoNetworkViewController;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->a:Lcom/samsung/android/app/music/view/NoNetworkViewController;

    return-object p0
.end method

.method private d()V
    .locals 3

    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f04011c

    invoke-static {v0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v2, -0x1

    .line 90
    invoke-virtual {p0, v0, v2, v2}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->addView(Landroid/view/View;II)V

    const v0, 0x7f13013d

    .line 91
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->c:Landroid/view/View;

    .line 92
    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic d(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->e:Z

    return p0
.end method

.method private e()V
    .locals 2

    .line 242
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->e:Z

    if-nez v0, :cond_0

    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->c:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method static synthetic e(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->e()V

    return-void
.end method

.method static synthetic f(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;)Landroid/os/Handler;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->f:Landroid/os/Handler;

    return-object p0
.end method

.method private f()V
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->d:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/network/NetworkManager;Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;Landroid/view/View;)Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;
    .locals 2

    .line 149
    new-instance v0, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$3;

    invoke-direct {v1, p0, p3}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$3;-><init>(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;Landroid/view/View;)V

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;-><init>(Lcom/samsung/android/app/music/view/NoNetworkViewController$ContentView;Lcom/samsung/android/app/music/network/NetworkManager;)V

    const p1, 0x7f130159

    .line 168
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->a(I)Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;

    move-result-object p1

    const p3, 0x7f13015b

    .line 169
    invoke-virtual {p1, p3}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->b(I)Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;

    move-result-object p1

    const/4 p3, 0x1

    .line 170
    invoke-virtual {p1, p3}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->a(Z)Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;

    move-result-object p1

    .line 171
    invoke-virtual {p1, p3}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->c(Z)Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$4;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$4;-><init>(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;)V

    .line 172
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->a(Lcom/samsung/android/app/music/view/NoNetworkViewController$RetryListener;)Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;

    move-result-object p1

    .line 185
    invoke-virtual {p1, p3}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->b(Z)Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;

    .line 187
    new-instance p1, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$5;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$5;-><init>(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->a(Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;)Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;

    return-object v0
.end method

.method public a()V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->a:Lcom/samsung/android/app/music/view/NoNetworkViewController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->onStopCalled()V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;)V
    .locals 1

    const/4 v0, 0x0

    .line 273
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->a(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;Z)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;Z)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->b:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    .line 268
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->f()V

    .line 269
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->a:Lcom/samsung/android/app/music/view/NoNetworkViewController;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->a()V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/network/NetworkManager;Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;Landroid/view/View;ZZ)V
    .locals 0

    .line 123
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->a(Lcom/samsung/android/app/music/network/NetworkManager;Landroid/view/View;)V

    .line 125
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->a(Lcom/samsung/android/app/music/network/NetworkManager;Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;Landroid/view/View;)Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;

    move-result-object p1

    .line 126
    invoke-virtual {p1, p4}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->a(Z)Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;

    .line 127
    invoke-virtual {p1, p5}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->c(Z)Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;

    .line 128
    invoke-virtual {p1, p5}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->b(Z)Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;

    .line 129
    invoke-virtual {p1}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->a()Lcom/samsung/android/app/music/view/NoNetworkViewController;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->a(Lcom/samsung/android/app/music/view/NoNetworkViewController;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/view/NoNetworkViewController;)V
    .locals 0
    .param p1    # Lcom/samsung/android/app/music/view/NoNetworkViewController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 133
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->a:Lcom/samsung/android/app/music/view/NoNetworkViewController;

    .line 134
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->a:Lcom/samsung/android/app/music/view/NoNetworkViewController;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->onStartCalled()V

    return-void
.end method

.method public b()V
    .locals 2

    .line 206
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->f()V

    const/4 v0, 0x0

    .line 207
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->setVisibility(I)V

    .line 209
    sget-object v0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$6;->a:[I

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->b:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 214
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->a:Lcom/samsung/android/app/music/view/NoNetworkViewController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->e()V

    goto :goto_0

    .line 211
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->a:Lcom/samsung/android/app/music/view/NoNetworkViewController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->d()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c()V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->a:Lcom/samsung/android/app/music/view/NoNetworkViewController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->f()V

    return-void
.end method

.method public getMode()Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->b:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    return-object v0
.end method

.method public setEnableLoadingProgress(Z)V
    .locals 0

    .line 198
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->e:Z

    return-void
.end method
