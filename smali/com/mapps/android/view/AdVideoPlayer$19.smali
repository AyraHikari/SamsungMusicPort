.class Lcom/mapps/android/view/AdVideoPlayer$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdVideoPlayer;->createADClickButton(Landroid/widget/RelativeLayout;Landroid/widget/TextView;)V
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
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$19;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    .line 799
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/view/AdVideoPlayer$19;)Lcom/mapps/android/view/AdVideoPlayer;
    .locals 0

    .line 799
    iget-object p0, p0, Lcom/mapps/android/view/AdVideoPlayer$19;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 801
    new-instance p1, Lcom/mapps/android/view/AdVideoPlayer$19$1;

    invoke-direct {p1, p0}, Lcom/mapps/android/view/AdVideoPlayer$19$1;-><init>(Lcom/mapps/android/view/AdVideoPlayer$19;)V

    invoke-static {p1}, Lcom/mz/common/MZBtnUtils;->a(Ljava/util/concurrent/Callable;)V

    return-void
.end method
