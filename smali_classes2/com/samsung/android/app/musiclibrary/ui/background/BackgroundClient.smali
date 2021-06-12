.class public final Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundClient;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private volatile a:Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;->a:Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;

    const-string v1, "BackgroundUpdateRequest.Empty"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundClient;->a:Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;

    return-void
.end method


# virtual methods
.method public final a(Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundClient;->a:Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundClient;->a:Lcom/samsung/android/app/musiclibrary/ui/background/BackgroundUpdateRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
