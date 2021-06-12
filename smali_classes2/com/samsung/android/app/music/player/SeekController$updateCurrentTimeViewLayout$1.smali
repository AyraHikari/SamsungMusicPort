.class final Lcom/samsung/android/app/music/player/SeekController$updateCurrentTimeViewLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/SeekController;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/SeekController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/SeekController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/SeekController$updateCurrentTimeViewLayout$1;->a:Lcom/samsung/android/app/music/player/SeekController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 216
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SeekController$updateCurrentTimeViewLayout$1;->a:Lcom/samsung/android/app/music/player/SeekController;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/SeekController;->a(Lcom/samsung/android/app/music/player/SeekController;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "durationView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    .line 217
    iget-object v1, p0, Lcom/samsung/android/app/music/player/SeekController$updateCurrentTimeViewLayout$1;->a:Lcom/samsung/android/app/music/player/SeekController;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/SeekController;->b(Lcom/samsung/android/app/music/player/SeekController;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "currentTimeView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 218
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-le v0, v2, :cond_0

    .line 219
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    return-void
.end method
