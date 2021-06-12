.class Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$DownloadBasketLauncher$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$DownloadBasketLauncher;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$DownloadBasketLauncher;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$DownloadBasketLauncher;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$DownloadBasketLauncher$1;->a:Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$DownloadBasketLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 2

    .line 136
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$DownloadBasketLauncher;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UserInfoReceiver()"

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$DownloadBasketLauncher$1;->a:Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$DownloadBasketLauncher;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$DownloadBasketLauncher;->c(Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$DownloadBasketLauncher;)Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$OnExtractListener;

    move-result-object p1

    const-string v0, "withDownloadBasket"

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$DownloadBasketLauncher$1;->a:Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$DownloadBasketLauncher;

    .line 138
    invoke-static {v1}, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$DownloadBasketLauncher;->b(Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$DownloadBasketLauncher;)Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/ActivityLauncher;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$OnExtractListener;->a(Landroid/content/Intent;)V

    return-void
.end method
