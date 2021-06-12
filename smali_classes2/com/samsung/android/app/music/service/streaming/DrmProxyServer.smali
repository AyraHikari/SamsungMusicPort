.class public final Lcom/samsung/android/app/music/service/streaming/DrmProxyServer;
.super Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileChain;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/streaming/DrmProxyServer$MdrmFile;,
        Lcom/samsung/android/app/music/service/streaming/DrmProxyServer$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/service/streaming/DrmProxyServer$Companion;

.field private static final c:Z


# instance fields
.field private final b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/service/streaming/DrmProxyServer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/service/streaming/DrmProxyServer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/service/streaming/DrmProxyServer;->a:Lcom/samsung/android/app/music/service/streaming/DrmProxyServer$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileChain;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/service/streaming/DrmProxyServer;->b:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic a()Z
    .locals 1

    .line 26
    sget-boolean v0, Lcom/samsung/android/app/music/service/streaming/DrmProxyServer;->c:Z

    return v0
.end method


# virtual methods
.method protected request(Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;
    .locals 2

    if-nez p1, :cond_0

    .line 28
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->id:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;->parseCp(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 29
    new-instance v0, Lcom/samsung/android/app/music/service/streaming/DrmProxyServer$MdrmFile;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/streaming/DrmProxyServer;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/music/service/streaming/DrmProxyServer$MdrmFile;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/streaming/FileRequest;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/IFile;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
