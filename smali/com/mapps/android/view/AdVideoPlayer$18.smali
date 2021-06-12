.class Lcom/mapps/android/view/AdVideoPlayer$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdVideoPlayer;->createPreview(Landroid/widget/RelativeLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdVideoPlayer;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdVideoPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    .line 743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 747
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$18;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-virtual {v0}, Lcom/mapps/android/view/AdVideoPlayer;->getOnScreenTouchListener()Lcom/mz/common/listener/OnScreenTouchListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mz/common/listener/OnScreenTouchListener;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
