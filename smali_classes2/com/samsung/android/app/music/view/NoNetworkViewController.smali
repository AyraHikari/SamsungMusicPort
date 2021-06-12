.class public Lcom/samsung/android/app/music/view/NoNetworkViewController;
.super Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallbackAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger;,
        Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;,
        Lcom/samsung/android/app/music/view/NoNetworkViewController$RetryListener;,
        Lcom/samsung/android/app/music/view/NoNetworkViewController$ContentView;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/samsung/android/app/music/view/NoNetworkViewController$ContentView;

.field private final c:Lcom/samsung/android/app/music/network/NetworkManager;

.field private final d:Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

.field private final e:Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger;

.field private final f:I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end field

.field private final g:I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end field

.field private h:I
    .annotation build Landroid/support/annotation/DimenRes;
    .end annotation
.end field

.field private i:I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end field

.field private j:Landroid/view/View;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/view/View;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Lcom/samsung/android/app/music/view/NoNetworkViewController$RetryListener;

.field private q:Z

.field private r:Z

.field private s:Z

.field private final t:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

.field private final u:Landroid/view/View$OnClickListener;

.field private final v:Landroid/view/View$OnClickListener;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;)V
    .locals 6
    .param p1    # Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 265
    invoke-static {p1}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->a(Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;)Lcom/samsung/android/app/music/view/NoNetworkViewController$ContentView;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->b(Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;)Lcom/samsung/android/app/music/network/NetworkManager;

    move-result-object v2

    invoke-static {p1}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->c(Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;)Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    move-result-object v3

    .line 266
    invoke-static {p1}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->d(Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;)I

    move-result v4

    invoke-static {p1}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->e(Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;)I

    move-result v5

    move-object v0, p0

    .line 265
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/view/NoNetworkViewController;-><init>(Lcom/samsung/android/app/music/view/NoNetworkViewController$ContentView;Lcom/samsung/android/app/music/network/NetworkManager;Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;II)V

    .line 268
    invoke-static {p1}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->f(Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;)Lcom/samsung/android/app/music/view/NoNetworkViewController$RetryListener;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->p:Lcom/samsung/android/app/music/view/NoNetworkViewController$RetryListener;

    .line 269
    invoke-static {p1}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->g(Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->r:Z

    .line 270
    invoke-static {p1}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->h(Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->h:I

    .line 271
    invoke-static {p1}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->i(Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->i:I

    .line 272
    invoke-static {p1}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->j(Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->q:Z

    .line 273
    invoke-static {p1}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->k(Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 274
    invoke-direct {p0}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->g()V

    :cond_0
    const-string p1, "NoNetworkViewController"

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initialize. autoRefresh - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->q:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;Lcom/samsung/android/app/music/view/NoNetworkViewController$1;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/view/NoNetworkViewController;-><init>(Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;)V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/app/music/view/NoNetworkViewController$ContentView;Lcom/samsung/android/app/music/network/NetworkManager;Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;II)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/music/view/NoNetworkViewController$ContentView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/music/network/NetworkManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .line 281
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallbackAdapter;-><init>()V

    const/4 v0, 0x0

    .line 147
    iput v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->h:I

    .line 150
    iput v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->i:I

    .line 171
    iput-boolean v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->s:Z

    .line 173
    new-instance v0, Lcom/samsung/android/app/music/view/NoNetworkViewController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/view/NoNetworkViewController$1;-><init>(Lcom/samsung/android/app/music/view/NoNetworkViewController;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->t:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    .line 226
    new-instance v0, Lcom/samsung/android/app/music/view/NoNetworkViewController$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/view/NoNetworkViewController$2;-><init>(Lcom/samsung/android/app/music/view/NoNetworkViewController;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->u:Landroid/view/View$OnClickListener;

    .line 245
    new-instance v0, Lcom/samsung/android/app/music/view/NoNetworkViewController$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/view/NoNetworkViewController$3;-><init>(Lcom/samsung/android/app/music/view/NoNetworkViewController;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->v:Landroid/view/View$OnClickListener;

    .line 282
    iput-object p1, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->b:Lcom/samsung/android/app/music/view/NoNetworkViewController$ContentView;

    .line 283
    iput-object p2, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->c:Lcom/samsung/android/app/music/network/NetworkManager;

    .line 284
    iput-object p3, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->d:Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    .line 285
    iput p4, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->f:I

    .line 286
    iput p5, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->g:I

    .line 288
    iget-object p1, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->d:Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    if-eqz p1, :cond_0

    .line 289
    new-instance p1, Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger$Impl;

    iget-object p2, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->d:Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;->getScreenId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger$Impl;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->e:Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 291
    iput-object p1, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->e:Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger;

    .line 294
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->b:Lcom/samsung/android/app/music/view/NoNetworkViewController$ContentView;

    invoke-interface {p1}, Lcom/samsung/android/app/music/view/NoNetworkViewController$ContentView;->b()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->a:Landroid/content/Context;

    return-void
.end method

.method private a(I)V
    .locals 3

    const-string v0, "NoNetworkViewController"

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDefaultViewVisible. visibility - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-boolean v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->s:Z

    if-eqz v0, :cond_0

    const-string p1, "NoNetworkViewController"

    const-string v0, "setDefaultViewVisible. now layout is frozen. so ignore request"

    .line 382
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->b:Lcom/samsung/android/app/music/view/NoNetworkViewController$ContentView;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/view/NoNetworkViewController$ContentView;->a(I)V

    return-void
.end method

.method private a(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 487
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/music/network/NetworkInfo;)V
    .locals 6

    .line 306
    iget-object v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 307
    invoke-virtual {p0}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->b()Z

    move-result v1

    const v2, 0x7f0b0310

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0x7f0b0088

    if-eqz v1, :cond_1

    .line 309
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->b(Lcom/samsung/android/app/music/network/NetworkInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 311
    new-array p1, v4, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->a:Landroid/content/Context;

    .line 312
    invoke-static {v1}, Lcom/samsung/android/app/music/util/AppNameUtils;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v3

    invoke-virtual {v0, v5, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->u:Landroid/view/View$OnClickListener;

    .line 311
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 316
    :cond_0
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->v:Landroid/view/View$OnClickListener;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 321
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->b(Lcom/samsung/android/app/music/network/NetworkInfo;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 323
    new-array p1, v4, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->a:Landroid/content/Context;

    .line 324
    invoke-static {v1}, Lcom/samsung/android/app/music/util/AppNameUtils;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v3

    invoke-virtual {v0, v5, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->u:Landroid/view/View$OnClickListener;

    .line 323
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->b(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 328
    :cond_2
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->v:Landroid/view/View$OnClickListener;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->b(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method private a(Lcom/samsung/android/app/music/network/NetworkInfo;Z)V
    .locals 3
    .param p1    # Lcom/samsung/android/app/music/network/NetworkInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "NoNetworkViewController"

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateViewByNetworkInfo. connected - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->a:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v2, v2, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", byCallback - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", loaded - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->b:Lcom/samsung/android/app/music/view/NoNetworkViewController$ContentView;

    .line 189
    invoke-interface {v2}, Lcom/samsung/android/app/music/view/NoNetworkViewController$ContentView;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", observe - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->r:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", auto refresh - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->q:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-boolean v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->r:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 193
    iget-object v0, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->a:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v0, v0, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    if-eqz v0, :cond_2

    .line 194
    invoke-virtual {p0}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 195
    iget-object p1, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->b:Lcom/samsung/android/app/music/view/NoNetworkViewController$ContentView;

    invoke-interface {p1}, Lcom/samsung/android/app/music/view/NoNetworkViewController$ContentView;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->f()V

    goto :goto_1

    .line 197
    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->q:Z

    if-eqz p1, :cond_7

    .line 198
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->b(Z)V

    goto :goto_1

    .line 200
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->c()Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0x8

    .line 201
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->c(I)V

    goto :goto_1

    :cond_2
    if-nez p2, :cond_4

    .line 205
    iget-object p2, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->b:Lcom/samsung/android/app/music/view/NoNetworkViewController$ContentView;

    invoke-interface {p2}, Lcom/samsung/android/app/music/view/NoNetworkViewController$ContentView;->a()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 206
    invoke-virtual {p0}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->e()V

    goto :goto_0

    .line 208
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->d()V

    goto :goto_0

    .line 210
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->b()Z

    move-result p2

    if-nez p2, :cond_5

    .line 211
    invoke-virtual {p0}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->e()V

    goto :goto_0

    .line 213
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->d()V

    .line 215
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->a(Lcom/samsung/android/app/music/network/NetworkInfo;)V

    goto :goto_1

    .line 217
    :cond_6
    iget-boolean v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->q:Z

    if-eqz v0, :cond_7

    .line 218
    invoke-virtual {p0}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->a:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean p1, p1, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    .line 219
    iget-object p1, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->b:Lcom/samsung/android/app/music/view/NoNetworkViewController$ContentView;

    invoke-interface {p1}, Lcom/samsung/android/app/music/view/NoNetworkViewController$ContentView;->a()Z

    move-result p1

    if-nez p1, :cond_7

    .line 220
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->b(Z)V

    :cond_7
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/view/NoNetworkViewController;Lcom/samsung/android/app/music/network/NetworkInfo;Z)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->a(Lcom/samsung/android/app/music/network/NetworkInfo;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->l:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 471
    iget-object p1, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->l:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/view/NoNetworkViewController;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->q:Z

    return p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/view/NoNetworkViewController;)Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->e:Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger;

    return-object p0
.end method

.method private b(I)V
    .locals 4

    const-string v0, "NoNetworkViewController"

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNoNetworkViewVisible. visibility - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-boolean v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->s:Z

    if-eqz v0, :cond_0

    const-string p1, "NoNetworkViewController"

    const-string v0, "setNoNetworkViewVisible. now layout is frozen. so ignore request"

    .line 392
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->j:Landroid/view/View;

    if-nez v0, :cond_4

    if-nez p1, :cond_4

    .line 397
    iget-object v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->b:Lcom/samsung/android/app/music/view/NoNetworkViewController$ContentView;

    invoke-interface {v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController$ContentView;->b()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 399
    iget v1, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->f:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    if-eqz v1, :cond_1

    .line 401
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->j:Landroid/view/View;

    .line 404
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->j:Landroid/view/View;

    if-nez v1, :cond_2

    return-void

    :cond_2
    const v1, 0x7f130486

    .line 408
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->k:Landroid/widget/TextView;

    .line 410
    iget v1, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->i:I

    if-eqz v1, :cond_3

    .line 411
    iget-object v1, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->k:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->a:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->i:I

    .line 412
    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 411
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    const v1, 0x7f13018a

    .line 415
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->l:Landroid/widget/TextView;

    .line 418
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->j:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 419
    iget-object v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->j:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method private b(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->o:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->o:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 479
    iget-object p1, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->o:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private b(Z)V
    .locals 3

    const-string v0, "NoNetworkViewController"

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retry. byUser - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", listener- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->p:Lcom/samsung/android/app/music/view/NoNetworkViewController$RetryListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->p:Lcom/samsung/android/app/music/view/NoNetworkViewController$RetryListener;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 361
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->a(Z)V

    .line 363
    invoke-virtual {p0}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->f()V

    .line 365
    iget-object v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->p:Lcom/samsung/android/app/music/view/NoNetworkViewController$RetryListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/view/NoNetworkViewController$RetryListener;->a(Z)V

    .line 367
    iget-object v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->e:Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 369
    invoke-virtual {p0}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->c:Lcom/samsung/android/app/music/network/NetworkManager;

    .line 370
    invoke-interface {v0}, Lcom/samsung/android/app/music/network/NetworkManager;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->b(Lcom/samsung/android/app/music/network/NetworkInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->e:Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger;

    iget-object v2, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->a:Landroid/content/Context;

    invoke-interface {v0, v2, p1, v1}, Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger;->b(Landroid/content/Context;II)V

    :cond_1
    return-void
.end method

.method private b(Lcom/samsung/android/app/music/network/NetworkInfo;)Z
    .locals 1

    .line 517
    iget-object v0, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->d:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v0, v0, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->c:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v0, v0, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->e:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean p1, p1, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method static synthetic c(Lcom/samsung/android/app/music/view/NoNetworkViewController;)Landroid/content/Context;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->a:Landroid/content/Context;

    return-object p0
.end method

.method private c(I)V
    .locals 4

    const-string v0, "NoNetworkViewController"

    .line 424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNoNetworkPopupVisible. visibility - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-boolean v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->s:Z

    if-eqz v0, :cond_0

    const-string p1, "NoNetworkViewController"

    const-string v0, "setNoNetworkPopupVisible. now layout is frozen. so ignore request"

    .line 426
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->m:Landroid/view/View;

    if-nez v0, :cond_4

    if-nez p1, :cond_4

    .line 431
    iget-object v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->b:Lcom/samsung/android/app/music/view/NoNetworkViewController$ContentView;

    invoke-interface {v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController$ContentView;->b()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 433
    iget v1, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->g:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    if-eqz v1, :cond_1

    .line 435
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->m:Landroid/view/View;

    .line 437
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->m:Landroid/view/View;

    if-nez v1, :cond_2

    return-void

    .line 440
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->m:Landroid/view/View;

    new-instance v2, Lcom/samsung/android/app/music/view/NoNetworkViewController$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/view/NoNetworkViewController$4;-><init>(Lcom/samsung/android/app/music/view/NoNetworkViewController;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    iget v1, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->h:I

    if-eqz v1, :cond_3

    .line 447
    iget-object v1, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->m:Landroid/view/View;

    const v2, 0x7f130482

    .line 448
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 449
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 450
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_3

    .line 451
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->a:Landroid/content/Context;

    .line 452
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->h:I

    .line 453
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_3
    const v1, 0x7f130484

    .line 456
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->n:Landroid/widget/TextView;

    const v1, 0x7f130485

    .line 457
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->o:Landroid/widget/TextView;

    .line 458
    iget-object v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->o:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->o:Landroid/widget/TextView;

    .line 459
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    .line 458
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 463
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->m:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 464
    iget-object v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->m:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method private g()V
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->c:Lcom/samsung/android/app/music/network/NetworkManager;

    invoke-interface {v0}, Lcom/samsung/android/app/music/network/NetworkManager;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object v0

    .line 299
    iget-object v1, v0, Lcom/samsung/android/app/music/network/NetworkInfo;->a:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v1, v1, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    if-nez v1, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->d()V

    .line 301
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->a(Lcom/samsung/android/app/music/network/NetworkInfo;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->c:Lcom/samsung/android/app/music/network/NetworkManager;

    invoke-interface {v0}, Lcom/samsung/android/app/music/network/NetworkManager;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->a(Lcom/samsung/android/app/music/network/NetworkInfo;Z)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 354
    iput-boolean p1, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->s:Z

    return-void
.end method

.method public b()Z
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->j:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Z
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->m:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 499
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->b(I)V

    const/16 v0, 0x8

    .line 500
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->c(I)V

    const/4 v0, 0x4

    .line 501
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->a(I)V

    return-void
.end method

.method public e()V
    .locals 1

    const/16 v0, 0x8

    .line 505
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->b(I)V

    const/4 v0, 0x0

    .line 506
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->c(I)V

    .line 507
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->a(I)V

    return-void
.end method

.method public f()V
    .locals 1

    const/16 v0, 0x8

    .line 511
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->b(I)V

    .line 512
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->c(I)V

    const/4 v0, 0x0

    .line 513
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->a(I)V

    return-void
.end method

.method public onStartCalled()V
    .locals 2

    .line 336
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallbackAdapter;->onStartCalled()V

    .line 337
    iget-boolean v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->r:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->q:Z

    if-eqz v0, :cond_1

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->c:Lcom/samsung/android/app/music/network/NetworkManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->t:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/network/NetworkManager;->addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    :cond_1
    return-void
.end method

.method public onStopCalled()V
    .locals 2

    .line 344
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallbackAdapter;->onStopCalled()V

    .line 345
    iget-boolean v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->r:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->q:Z

    if-eqz v0, :cond_1

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->c:Lcom/samsung/android/app/music/network/NetworkManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController;->t:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/network/NetworkManager;->removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    :cond_1
    return-void
.end method
