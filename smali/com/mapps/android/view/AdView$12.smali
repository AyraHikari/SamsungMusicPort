.class Lcom/mapps/android/view/AdView$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdView;->common(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdView;

.field private final synthetic val$commonHandler:Landroid/os/Handler;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$12;->this$0:Lcom/mapps/android/view/AdView;

    iput-object p2, p0, Lcom/mapps/android/view/AdView$12;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/mapps/android/view/AdView$12;->val$commonHandler:Landroid/os/Handler;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 207
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/view/AdView$12;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/mapps/android/share/ShareUtil;->getIsGPS(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "1"

    .line 208
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/mapps/android/view/AdView$12;->this$0:Lcom/mapps/android/view/AdView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mapps/android/view/AdView;->access$54(Lcom/mapps/android/view/AdView;Z)V

    .line 213
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mapps/android/view/AdView$12;->this$0:Lcom/mapps/android/view/AdView;

    iget-object v1, p0, Lcom/mapps/android/view/AdView$12;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$22(Lcom/mapps/android/view/AdView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mapps/android/view/AdView;->access$55(Lcom/mapps/android/view/AdView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 215
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 218
    :goto_0
    iget-object v0, p0, Lcom/mapps/android/view/AdView$12;->val$commonHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
