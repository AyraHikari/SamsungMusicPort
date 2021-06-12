.class final Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository$SettingContentObserver;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingContentObserver"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository;Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iput-object p1, p0, Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository$SettingContentObserver;->a:Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository;

    .line 79
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method private final a(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .line 104
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    :cond_2
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 100
    check-cast v0, Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository$SettingContentObserver;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final a(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;)V
    .locals 1

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository$SettingContentObserver;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 5

    const-string v0, "uri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository$SettingContentObserver;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    if-eqz v0, :cond_1

    const-string v1, "settingObserver?.get() ?: return"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository$SettingContentObserver;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 87
    iget-object v2, p0, Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository$SettingContentObserver;->a:Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/app/music/provider/setting/MusicSettingRepository;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MusicSettingRepository"

    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onChange - key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    return-void

    :cond_1
    return-void
.end method
