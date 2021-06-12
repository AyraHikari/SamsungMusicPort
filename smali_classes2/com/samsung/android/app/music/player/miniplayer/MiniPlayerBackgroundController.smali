.class public final Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundController$Companion;
    }
.end annotation


# static fields
.field public static final a:I

.field public static final b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundController$Companion;


# instance fields
.field private final c:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;

.field private final d:Landroid/graphics/drawable/ColorDrawable;

.field private final e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundController;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundController$Companion;

    const-wide v0, 0x404fe00000000000L    # 63.75

    double-to-int v0, v0

    const/4 v1, 0x0

    .line 136
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundController;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "miniPlayerRoot"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundController;->e:Landroid/content/Context;

    .line 107
    new-instance p1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;

    invoke-direct {p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;-><init>()V

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundController;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;->a(I)V

    .line 107
    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundController;->c:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;

    .line 110
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    sget v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundController;->a:I

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundController;->d:Landroid/graphics/drawable/ColorDrawable;

    const-string p1, "MiniPlayerBackgroundController"

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initialized softKeyView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundController;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1005b4

    .line 118
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const v1, 0x7f130417

    .line 119
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 120
    iget-object v3, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundController;->c:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 122
    :cond_1
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 124
    new-instance v1, Lcom/samsung/android/app/music/player/miniplayer/RoundedRectOutlineProvider;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/player/miniplayer/RoundedRectOutlineProvider;-><init>(F)V

    check-cast v1, Landroid/view/ViewOutlineProvider;

    invoke-virtual {p3, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 126
    :cond_2
    iget-object p3, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundController;->c:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;

    const v1, 0x7f1005b5

    .line 127
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p3, p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;->b(F)V

    .line 128
    invoke-virtual {p3, v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;->a(F)V

    if-eqz p2, :cond_3

    .line 130
    iget-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundController;->d:Landroid/graphics/drawable/ColorDrawable;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method
