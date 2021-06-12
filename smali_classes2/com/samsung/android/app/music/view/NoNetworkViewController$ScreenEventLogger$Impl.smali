.class public Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger$Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Impl"
.end annotation


# static fields
.field private static final a:Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger;

.field private static final b:Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger;


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 537
    new-instance v0, Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger$StoreMainLogger;

    invoke-direct {v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger$StoreMainLogger;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger$Impl;->a:Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger;

    .line 539
    new-instance v0, Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger$SearchLogger;

    invoke-direct {v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger$SearchLogger;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger$Impl;->b:Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 544
    iput-object p1, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger$Impl;->c:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 570
    sget-object v0, Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger$Impl;->a:Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger;

    invoke-interface {v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    sget-object p1, Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger$Impl;->a:Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger;

    return-object p1

    .line 572
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger$Impl;->b:Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger;

    invoke-interface {v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 573
    sget-object p1, Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger$Impl;->b:Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 565
    iget-object v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger$Impl;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/Context;II)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 549
    iget-object v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger$Impl;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger$Impl;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 551
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger;->a(Landroid/content/Context;II)V

    :cond_0
    return-void
.end method

.method public b(Landroid/content/Context;II)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 557
    iget-object v0, p0, Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger$Impl;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger$Impl;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 559
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/music/view/NoNetworkViewController$ScreenEventLogger;->b(Landroid/content/Context;II)V

    :cond_0
    return-void
.end method
