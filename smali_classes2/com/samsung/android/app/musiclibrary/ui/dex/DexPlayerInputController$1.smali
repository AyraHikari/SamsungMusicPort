.class Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/dex/IDexVolumeController;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController$1;->a:Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 p1, 0x0

    .line 38
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 39
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 40
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController$1;->a:Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;->a(Lcom/samsung/android/app/musiclibrary/ui/dex/DexPlayerInputController;)Landroid/view/GestureDetector;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v1

    :cond_0
    return p1
.end method
