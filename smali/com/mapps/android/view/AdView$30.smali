.class Lcom/mapps/android/view/AdView$30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdView;->imageLoadSSLConnectionThread(Ljava/lang/String;IILcom/mz/common/network/data/DataNTSSP;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdView;

.field private final synthetic val$FileName:Ljava/lang/String;

.field private final synthetic val$data:Lcom/mz/common/network/data/DataNTSSP;

.field private final synthetic val$index:I

.field private final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView;Ljava/lang/String;IILcom/mz/common/network/data/DataNTSSP;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$30;->this$0:Lcom/mapps/android/view/AdView;

    iput-object p2, p0, Lcom/mapps/android/view/AdView$30;->val$FileName:Ljava/lang/String;

    iput p3, p0, Lcom/mapps/android/view/AdView$30;->val$type:I

    iput p4, p0, Lcom/mapps/android/view/AdView$30;->val$index:I

    iput-object p5, p0, Lcom/mapps/android/view/AdView$30;->val$data:Lcom/mz/common/network/data/DataNTSSP;

    .line 1136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x1

    .line 1141
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/mapps/android/view/AdView$30;->val$FileName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1143
    iget-object v2, p0, Lcom/mapps/android/view/AdView$30;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mapps/android/view/AdView;->access$48(Lcom/mapps/android/view/AdView;Landroid/graphics/Bitmap;)V

    .line 1144
    iget-object v2, p0, Lcom/mapps/android/view/AdView$30;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v2}, Lcom/mapps/android/view/AdView;->access$14(Lcom/mapps/android/view/AdView;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1145
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 1146
    iget v3, p0, Lcom/mapps/android/view/AdView$30;->val$type:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 1147
    iget v3, p0, Lcom/mapps/android/view/AdView$30;->val$index:I

    iput v3, v2, Landroid/os/Message;->arg2:I

    .line 1148
    iget-object v3, p0, Lcom/mapps/android/view/AdView$30;->this$0:Lcom/mapps/android/view/AdView;

    iget-object v3, v3, Lcom/mapps/android/view/AdView;->imageLoadCompleteHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x0

    goto :goto_0

    .line 1151
    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/mapps/android/view/AdView$30;->val$FileName:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1152
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1156
    :goto_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 1158
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1160
    :goto_1
    iget-object v1, p0, Lcom/mapps/android/view/AdView$30;->this$0:Lcom/mapps/android/view/AdView;

    iget-object v1, v1, Lcom/mapps/android/view/AdView;->imageTypeBgColorHandler:Landroid/os/Handler;

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    if-eqz v0, :cond_1

    .line 1162
    iget-object v0, p0, Lcom/mapps/android/view/AdView$30;->this$0:Lcom/mapps/android/view/AdView;

    iget-object v0, v0, Lcom/mapps/android/view/AdView;->imageLoadFailHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 1164
    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1165
    iget-object v1, p0, Lcom/mapps/android/view/AdView$30;->val$data:Lcom/mz/common/network/data/DataNTSSP;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1166
    iget-object v1, p0, Lcom/mapps/android/view/AdView$30;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$81(Lcom/mapps/android/view/AdView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_2
    return-void
.end method
