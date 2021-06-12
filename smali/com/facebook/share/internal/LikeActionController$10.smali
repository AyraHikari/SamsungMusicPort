.class Lcom/facebook/share/internal/LikeActionController$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/internal/PlatformServiceClient$CompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/LikeActionController;->refreshStatusViaService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/internal/LikeActionController;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/LikeActionController;)V
    .locals 0

    .line 1163
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController$10;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed(Landroid/os/Bundle;)V
    .locals 8

    if-eqz p1, :cond_6

    const-string v0, "com.facebook.platform.extra.OBJECT_IS_LIKED"

    .line 1167
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_a

    :cond_0
    const-string v0, "com.facebook.platform.extra.OBJECT_IS_LIKED"

    .line 1171
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v0, "com.facebook.platform.extra.LIKE_COUNT_STRING_WITH_LIKE"

    .line 1174
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.facebook.platform.extra.LIKE_COUNT_STRING_WITH_LIKE"

    .line 1175
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$10;->this$0:Lcom/facebook/share/internal/LikeActionController;

    .line 1176
    invoke-static {v0}, Lcom/facebook/share/internal/LikeActionController;->access$700(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    const-string v0, "com.facebook.platform.extra.LIKE_COUNT_STRING_WITHOUT_LIKE"

    .line 1179
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.facebook.platform.extra.LIKE_COUNT_STRING_WITHOUT_LIKE"

    .line 1180
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v4, v0

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$10;->this$0:Lcom/facebook/share/internal/LikeActionController;

    .line 1182
    invoke-static {v0}, Lcom/facebook/share/internal/LikeActionController;->access$800(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :goto_3
    const-string v0, "com.facebook.platform.extra.SOCIAL_SENTENCE_WITH_LIKE"

    .line 1185
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "com.facebook.platform.extra.SOCIAL_SENTENCE_WITH_LIKE"

    .line 1186
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    move-object v5, v0

    goto :goto_5

    :cond_3
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$10;->this$0:Lcom/facebook/share/internal/LikeActionController;

    .line 1187
    invoke-static {v0}, Lcom/facebook/share/internal/LikeActionController;->access$900(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :goto_5
    const-string v0, "com.facebook.platform.extra.SOCIAL_SENTENCE_WITHOUT_LIKE"

    .line 1190
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "com.facebook.platform.extra.SOCIAL_SENTENCE_WITHOUT_LIKE"

    .line 1191
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    move-object v6, v0

    goto :goto_7

    :cond_4
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$10;->this$0:Lcom/facebook/share/internal/LikeActionController;

    .line 1193
    invoke-static {v0}, Lcom/facebook/share/internal/LikeActionController;->access$1000(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :goto_7
    const-string v0, "com.facebook.platform.extra.UNLIKE_TOKEN"

    .line 1196
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "com.facebook.platform.extra.UNLIKE_TOKEN"

    .line 1197
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_8
    move-object v7, p1

    goto :goto_9

    :cond_5
    iget-object p1, p0, Lcom/facebook/share/internal/LikeActionController$10;->this$0:Lcom/facebook/share/internal/LikeActionController;

    .line 1198
    invoke-static {p1}, Lcom/facebook/share/internal/LikeActionController;->access$1100(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    .line 1200
    :goto_9
    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController$10;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-static/range {v1 .. v7}, Lcom/facebook/share/internal/LikeActionController;->access$1300(Lcom/facebook/share/internal/LikeActionController;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    :goto_a
    return-void
.end method
