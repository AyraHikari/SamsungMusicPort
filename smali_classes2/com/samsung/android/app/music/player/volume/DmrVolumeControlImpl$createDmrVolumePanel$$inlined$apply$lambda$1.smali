.class final Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl$createDmrVolumePanel$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->m()Landroid/widget/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl$createDmrVolumePanel$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl$createDmrVolumePanel$$inlined$apply$lambda$1;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const-string p1, "event"

    .line 89
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 90
    iget-object p1, p0, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl$createDmrVolumePanel$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;->a(Lcom/samsung/android/app/music/player/volume/DmrVolumeControlImpl;)Landroid/view/View;

    move-result-object p1

    .line 91
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 92
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    .line 89
    invoke-static {p1, v0, p2}, Lcom/samsung/android/app/music/util/UiUtils;->a(Landroid/view/View;FF)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
