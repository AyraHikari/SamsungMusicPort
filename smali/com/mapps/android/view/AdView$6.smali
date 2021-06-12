.class Lcom/mapps/android/view/AdView$6;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapps/android/view/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$6;->this$0:Lcom/mapps/android/view/AdView;

    .line 1176
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1179
    iget-object p1, p0, Lcom/mapps/android/view/AdView$6;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {p1}, Lcom/mapps/android/view/AdView;->access$5(Lcom/mapps/android/view/AdView;)Lcom/mz/common/network/data/DataNTBanner;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTBanner;->i()Lcom/mz/common/network/data/DataListBannerAD;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataListBannerAD;->b()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x0

    .line 1181
    :try_start_0
    iget-object v0, p0, Lcom/mapps/android/view/AdView$6;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView;->access$5(Lcom/mapps/android/view/AdView;)Lcom/mz/common/network/data/DataNTBanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataNTBanner;->i()Lcom/mz/common/network/data/DataListBannerAD;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mz/common/network/data/DataListBannerAD;->a(I)Lcom/mz/common/network/data/IData;

    move-result-object v0

    check-cast v0, Lcom/mz/common/network/data/DataBannerAD;

    .line 1182
    invoke-virtual {v0}, Lcom/mz/common/network/data/DataBannerAD;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, ""

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataBannerAD;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1183
    invoke-virtual {v0}, Lcom/mz/common/network/data/DataBannerAD;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1184
    invoke-virtual {v0}, Lcom/mz/common/network/data/DataBannerAD;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mz/common/MZUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1185
    iget-object v1, p0, Lcom/mapps/android/view/AdView$6;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/mapps/android/view/AdView;->access$9(Lcom/mapps/android/view/AdView;I)V

    goto :goto_0

    .line 1187
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/view/AdView$6;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v0, p1}, Lcom/mapps/android/view/AdView;->access$9(Lcom/mapps/android/view/AdView;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1190
    :catch_0
    iget-object v0, p0, Lcom/mapps/android/view/AdView$6;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v0, p1}, Lcom/mapps/android/view/AdView;->access$9(Lcom/mapps/android/view/AdView;I)V

    :cond_1
    :goto_0
    return-void
.end method
