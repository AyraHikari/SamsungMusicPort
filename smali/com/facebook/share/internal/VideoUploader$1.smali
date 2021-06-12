.class final Lcom/facebook/share/internal/VideoUploader$1;
.super Lcom/facebook/AccessTokenTracker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/VideoUploader;->registerAccessTokenTracker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 258
    invoke-direct {p0}, Lcom/facebook/AccessTokenTracker;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCurrentAccessTokenChanged(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 270
    invoke-virtual {p2}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object p2

    .line 271
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object p1

    .line 269
    invoke-static {p2, p1}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 273
    :cond_1
    invoke-static {}, Lcom/facebook/share/internal/VideoUploader;->access$200()V

    :cond_2
    return-void
.end method
