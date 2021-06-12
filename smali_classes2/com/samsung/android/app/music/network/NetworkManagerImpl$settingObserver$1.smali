.class final Lcom/samsung/android/app/music/network/NetworkManagerImpl$settingObserver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/NetworkManagerImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/network/NetworkManagerImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/network/NetworkManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl$settingObserver$1;->a:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p2, "mobile_data"

    .line 41
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 42
    iget-object p1, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl$settingObserver$1;->a:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    iget-object p2, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl$settingObserver$1;->a:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-static {p2}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->b(Lcom/samsung/android/app/music/network/NetworkManagerImpl;)Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->a(Lcom/samsung/android/app/music/network/NetworkInfo;)V

    .line 43
    iget-object p1, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl$settingObserver$1;->a:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->a(Lcom/samsung/android/app/music/network/NetworkManagerImpl;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 44
    iget-object p1, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl$settingObserver$1;->a:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-static {p1}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->c(Lcom/samsung/android/app/music/network/NetworkManagerImpl;)V

    goto :goto_0

    .line 46
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl$settingObserver$1;->a:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->a(Lcom/samsung/android/app/music/network/NetworkManagerImpl;Z)V

    :cond_1
    :goto_0
    return-void
.end method
