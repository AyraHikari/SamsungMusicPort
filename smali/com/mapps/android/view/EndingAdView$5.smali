.class Lcom/mapps/android/view/EndingAdView$5;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapps/android/view/EndingAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/EndingAdView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/EndingAdView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView$5;->this$0:Lcom/mapps/android/view/EndingAdView;

    .line 909
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 915
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 916
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView$5;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-virtual {v1}, Lcom/mapps/android/view/EndingAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView$5;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v2}, Lcom/mapps/android/view/EndingAdView;->access$6(Lcom/mapps/android/view/EndingAdView;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 918
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView$5;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v1}, Lcom/mapps/android/view/EndingAdView;->access$6(Lcom/mapps/android/view/EndingAdView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 921
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 922
    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView$5;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v1}, Lcom/mapps/android/view/EndingAdView;->access$7(Lcom/mapps/android/view/EndingAdView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 924
    :cond_1
    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView$5;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v1}, Lcom/mapps/android/view/EndingAdView;->access$7(Lcom/mapps/android/view/EndingAdView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 927
    :goto_1
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$5;->this$0:Lcom/mapps/android/view/EndingAdView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mapps/android/view/EndingAdView;->access$0(Lcom/mapps/android/view/EndingAdView;I)V

    .line 928
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 929
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 931
    iget-object p1, p0, Lcom/mapps/android/view/EndingAdView$5;->this$0:Lcom/mapps/android/view/EndingAdView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/mapps/android/view/EndingAdView;->access$8(Lcom/mapps/android/view/EndingAdView;Z)V

    goto :goto_2

    .line 933
    :cond_2
    iget-object p1, p0, Lcom/mapps/android/view/EndingAdView$5;->this$0:Lcom/mapps/android/view/EndingAdView;

    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$5;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView;->access$9(Lcom/mapps/android/view/EndingAdView;)Lcom/mz/common/network/data/DataNTEnd;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mapps/android/view/EndingAdView;->access$10(Lcom/mapps/android/view/EndingAdView;Lcom/mz/common/network/data/DataNTEnd;)V

    :cond_3
    :goto_2
    return-void
.end method
