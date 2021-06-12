.class Lcom/mapps/android/view/AdVideoPlayer$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdVideoPlayer;->createMuteButton()V
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
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$17;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    .line 718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 721
    invoke-static {p2}, Lcom/mapps/android/view/AdVideoPlayer;->access$31(Z)V

    .line 722
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$17;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {p1}, Lcom/mapps/android/view/AdVideoPlayer;->access$32(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/widget/ToggleButton;

    move-result-object p1

    invoke-static {}, Lcom/mapps/android/view/AdVideoPlayer;->access$33()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/mapps/android/view/AdVideoPlayer$17;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {p2}, Lcom/mapps/android/view/AdVideoPlayer;->access$34(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/mapps/android/view/AdVideoPlayer$17;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {p2}, Lcom/mapps/android/view/AdVideoPlayer;->access$35(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ToggleButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 723
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$17;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {p1}, Lcom/mapps/android/view/AdVideoPlayer;->access$36(Lcom/mapps/android/view/AdVideoPlayer;)V

    return-void
.end method
