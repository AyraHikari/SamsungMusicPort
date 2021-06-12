.class public Lcom/samsung/android/app/music/widget/MusicImageSwitcher;
.super Landroid/widget/ImageSwitcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/widget/MusicImageSwitcher$AnimSet;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "MusicImageSwitcher"


# instance fields
.field private b:Lcom/samsung/android/app/music/widget/MusicImageSwitcher$AnimSet;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/ImageSwitcher;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(I)Landroid/view/animation/Animation;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/AnimRes;
        .end annotation
    .end param

    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/MusicImageSwitcher;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1
.end method

.method private getAnimSet()Lcom/samsung/android/app/music/widget/MusicImageSwitcher$AnimSet;
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/MusicImageSwitcher;->b:Lcom/samsung/android/app/music/widget/MusicImageSwitcher$AnimSet;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/samsung/android/app/music/widget/MusicImageSwitcher$AnimSet;

    const v1, 0x7f050019

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/widget/MusicImageSwitcher;->a(I)Landroid/view/animation/Animation;

    move-result-object v1

    const v2, 0x7f05001a

    .line 81
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/widget/MusicImageSwitcher;->a(I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/widget/MusicImageSwitcher$AnimSet;-><init>(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/widget/MusicImageSwitcher;->b:Lcom/samsung/android/app/music/widget/MusicImageSwitcher$AnimSet;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/MusicImageSwitcher;->b:Lcom/samsung/android/app/music/widget/MusicImageSwitcher$AnimSet;

    return-object v0
.end method

.method private setInOutAnimation(I)V
    .locals 3

    .line 69
    sget-object v0, Lcom/samsung/android/app/music/widget/MusicImageSwitcher;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInOutAnimation() - viDirection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/MusicImageSwitcher;->getAnimSet()Lcom/samsung/android/app/music/widget/MusicImageSwitcher$AnimSet;

    move-result-object p1

    .line 72
    invoke-static {p1}, Lcom/samsung/android/app/music/widget/MusicImageSwitcher$AnimSet;->a(Lcom/samsung/android/app/music/widget/MusicImageSwitcher$AnimSet;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 73
    invoke-static {p1}, Lcom/samsung/android/app/music/widget/MusicImageSwitcher$AnimSet;->b(Lcom/samsung/android/app/music/widget/MusicImageSwitcher$AnimSet;)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public a(ILandroid/graphics/drawable/Drawable;I)V
    .locals 3

    .line 42
    sget-object v0, Lcom/samsung/android/app/music/widget/MusicImageSwitcher;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImageDrawable() viDirection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    .line 44
    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/MusicImageSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-nez p2, :cond_0

    .line 46
    invoke-static {p3}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->b(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    :goto_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    .line 52
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 55
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/widget/MusicImageSwitcher;->setInOutAnimation(I)V

    if-nez p2, :cond_2

    .line 57
    invoke-static {p3}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->b(I)I

    move-result p1

    invoke-super {p0, p1}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    goto :goto_1

    .line 59
    :cond_2
    invoke-super {p0, p2}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_1
    return-void
.end method
