.class final Lcom/samsung/android/app/music/widget/MusicImageSwitcher$AnimSet;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/widget/MusicImageSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AnimSet"
.end annotation


# instance fields
.field private final a:Landroid/view/animation/Animation;

.field private final b:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/samsung/android/app/music/widget/MusicImageSwitcher$AnimSet;->a:Landroid/view/animation/Animation;

    .line 97
    iput-object p2, p0, Lcom/samsung/android/app/music/widget/MusicImageSwitcher$AnimSet;->b:Landroid/view/animation/Animation;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/widget/MusicImageSwitcher$AnimSet;)Landroid/view/animation/Animation;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/samsung/android/app/music/widget/MusicImageSwitcher$AnimSet;->a:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/widget/MusicImageSwitcher$AnimSet;)Landroid/view/animation/Animation;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/samsung/android/app/music/widget/MusicImageSwitcher$AnimSet;->b:Landroid/view/animation/Animation;

    return-object p0
.end method
