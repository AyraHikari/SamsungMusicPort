.class Lcom/mapps/android/view/AdVideoPlayer$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdVideoPlayer;->onSizeChanged(IIII)V
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
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$23;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    .line 1050
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1053
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$23;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-virtual {v0}, Lcom/mapps/android/view/AdVideoPlayer;->arrangeVideo()V

    return-void
.end method
