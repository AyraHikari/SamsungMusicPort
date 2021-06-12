.class public final Lcom/samsung/android/app/music/background/cache/UriBlurBitmapCacheClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/background/cache/BlurBitmapCacheClient;


# instance fields
.field private a:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/samsung/android/app/music/background/cache/UriBlurBitmapCacheClient;-><init>(Landroid/net/Uri;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/background/cache/UriBlurBitmapCacheClient;->a:Landroid/net/Uri;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/net/Uri;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 25
    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string p2, "Uri.EMPTY"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/background/cache/UriBlurBitmapCacheClient;-><init>(Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/music/background/cache/UriBlurBitmapCacheClient;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public final a(Landroid/net/Uri;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lcom/samsung/android/app/music/background/cache/UriBlurBitmapCacheClient;->a:Landroid/net/Uri;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/background/cache/UriBlurBitmapCacheClient;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
