.class Lcom/mapps/android/view/AdVideoPlayer$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdVideoPlayer;->createADCount(Landroid/widget/RelativeLayout;Lcom/mz/common/network/data/DataNTMovie;)V
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
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$20;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    .line 836
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/view/AdVideoPlayer$20;)Lcom/mapps/android/view/AdVideoPlayer;
    .locals 0

    .line 836
    iget-object p0, p0, Lcom/mapps/android/view/AdVideoPlayer$20;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 838
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$20;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {p1}, Lcom/mapps/android/view/AdVideoPlayer;->access$38(Lcom/mapps/android/view/AdVideoPlayer;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$20;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {p1}, Lcom/mapps/android/view/AdVideoPlayer;->access$39(Lcom/mapps/android/view/AdVideoPlayer;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 839
    new-instance p1, Lcom/mapps/android/view/AdVideoPlayer$20$1;

    invoke-direct {p1, p0}, Lcom/mapps/android/view/AdVideoPlayer$20$1;-><init>(Lcom/mapps/android/view/AdVideoPlayer$20;)V

    invoke-static {p1}, Lcom/mz/common/MZBtnUtils;->a(Ljava/util/concurrent/Callable;)V

    :cond_0
    return-void
.end method
