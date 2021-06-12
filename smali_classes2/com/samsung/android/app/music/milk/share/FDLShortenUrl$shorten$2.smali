.class final Lcom/samsung/android/app/music/milk/share/FDLShortenUrl$shorten$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/share/FDLShortenUrl;->a(Ljava/lang/String;Lcom/samsung/android/app/music/milk/share/OnShortenResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Lcom/google/firebase/dynamiclinks/ShortDynamicLink;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/share/OnShortenResult;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/share/OnShortenResult;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/share/FDLShortenUrl$shorten$2;->a:Lcom/samsung/android/app/music/milk/share/OnShortenResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/firebase/dynamiclinks/ShortDynamicLink;)V
    .locals 3

    const-string v0, "result"

    .line 18
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/google/firebase/dynamiclinks/ShortDynamicLink;->a()Landroid/net/Uri;

    move-result-object p1

    const-string v0, "SMUSIC-Share"

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shortLink: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/FDLShortenUrl$shorten$2;->a:Lcom/samsung/android/app/music/milk/share/OnShortenResult;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "it.toString()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/milk/share/OnShortenResult;->a(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p1, Lcom/google/firebase/dynamiclinks/ShortDynamicLink;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/share/FDLShortenUrl$shorten$2;->a(Lcom/google/firebase/dynamiclinks/ShortDynamicLink;)V

    return-void
.end method
