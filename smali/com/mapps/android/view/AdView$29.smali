.class Lcom/mapps/android/view/AdView$29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdView;->imageLoadConnectionThread(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdView;

.field private final synthetic val$index:I

.field private final synthetic val$stradfile:Ljava/lang/String;

.field private final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView;Ljava/lang/String;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$29;->this$0:Lcom/mapps/android/view/AdView;

    iput-object p2, p0, Lcom/mapps/android/view/AdView$29;->val$stradfile:Ljava/lang/String;

    iput p3, p0, Lcom/mapps/android/view/AdView$29;->val$type:I

    iput p4, p0, Lcom/mapps/android/view/AdView$29;->val$index:I

    .line 1086
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x1

    .line 1091
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mapps/android/view/AdView$29;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v2}, Lcom/mapps/android/view/AdView;->access$79(Lcom/mapps/android/view/AdView;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/mezzo/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mapps/android/view/AdView$29;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v2}, Lcom/mapps/android/view/AdView;->access$59(Lcom/mapps/android/view/AdView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mapps/android/view/AdView$29;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v2}, Lcom/mapps/android/view/AdView;->access$60(Lcom/mapps/android/view/AdView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1092
    iget-object v2, p0, Lcom/mapps/android/view/AdView$29;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v2}, Lcom/mapps/android/view/AdView;->access$61(Lcom/mapps/android/view/AdView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "image"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mapps/android/view/AdView$29;->val$stradfile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1091
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1093
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1094
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ""

    .line 1095
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1096
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1098
    iget-object v3, p0, Lcom/mapps/android/view/AdView$29;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mapps/android/view/AdView;->access$48(Lcom/mapps/android/view/AdView;Landroid/graphics/Bitmap;)V

    .line 1099
    iget-object v3, p0, Lcom/mapps/android/view/AdView$29;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v3}, Lcom/mapps/android/view/AdView;->access$14(Lcom/mapps/android/view/AdView;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1100
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1101
    iget v3, p0, Lcom/mapps/android/view/AdView$29;->val$type:I

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1102
    iget v3, p0, Lcom/mapps/android/view/AdView$29;->val$index:I

    iput v3, v1, Landroid/os/Message;->arg2:I

    .line 1103
    iget-object v3, p0, Lcom/mapps/android/view/AdView$29;->this$0:Lcom/mapps/android/view/AdView;

    iget-object v3, v3, Lcom/mapps/android/view/AdView;->imageLoadCompleteHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x0

    goto :goto_0

    .line 1106
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1107
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1111
    :goto_0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 1112
    iget-object v1, p0, Lcom/mapps/android/view/AdView$29;->this$0:Lcom/mapps/android/view/AdView;

    iget-object v1, v1, Lcom/mapps/android/view/AdView;->imageTypeBgColorHandler:Landroid/os/Handler;

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 1116
    iget-object v2, p0, Lcom/mapps/android/view/AdView$29;->this$0:Lcom/mapps/android/view/AdView;

    const/16 v3, -0x384

    invoke-static {v2, v3}, Lcom/mapps/android/view/AdView;->access$0(Lcom/mapps/android/view/AdView;I)V

    .line 1117
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 1120
    iget-object v0, p0, Lcom/mapps/android/view/AdView$29;->this$0:Lcom/mapps/android/view/AdView;

    iget-object v0, v0, Lcom/mapps/android/view/AdView;->imageLoadFailHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 1122
    :cond_2
    iget-object v0, p0, Lcom/mapps/android/view/AdView$29;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView;->access$80(Lcom/mapps/android/view/AdView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_2
    return-void
.end method
