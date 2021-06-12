.class Lcom/mapps/android/view/EndingAdView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/EndingAdView;->common(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/EndingAdView;

.field private final synthetic val$deviceLocationHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/EndingAdView;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView$7;->this$0:Lcom/mapps/android/view/EndingAdView;

    iput-object p2, p0, Lcom/mapps/android/view/EndingAdView$7;->val$deviceLocationHandler:Landroid/os/Handler;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$7;->this$0:Lcom/mapps/android/view/EndingAdView;

    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView$7;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v1}, Lcom/mapps/android/view/EndingAdView;->access$11(Lcom/mapps/android/view/EndingAdView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mapps/android/view/EndingAdView;->access$12(Lcom/mapps/android/view/EndingAdView;Ljava/lang/String;)V

    .line 155
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 157
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView$7;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v2}, Lcom/mapps/android/view/EndingAdView;->access$11(Lcom/mapps/android/view/EndingAdView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mapps/android/share/ShareUtil;->getIsGPS(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 159
    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView$7;->val$deviceLocationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 163
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
