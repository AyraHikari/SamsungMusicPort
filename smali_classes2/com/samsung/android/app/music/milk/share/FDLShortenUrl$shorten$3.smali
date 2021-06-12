.class final Lcom/samsung/android/app/music/milk/share/FDLShortenUrl$shorten$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/share/FDLShortenUrl;->a(Ljava/lang/String;Lcom/samsung/android/app/music/milk/share/OnShortenResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/share/OnShortenResult;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/share/OnShortenResult;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/share/FDLShortenUrl$shorten$3;->a:Lcom/samsung/android/app/music/milk/share/OnShortenResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SMUSIC-Share"

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to shorten: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/share/FDLShortenUrl$shorten$3;->a:Lcom/samsung/android/app/music/milk/share/OnShortenResult;

    const-string v0, ""

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/milk/share/OnShortenResult;->a(Ljava/lang/String;)V

    return-void
.end method
