.class public final Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder$Header;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Header"
.end annotation


# instance fields
.field private final get:Ljava/lang/String;

.field private final range:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder$Header;->get:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder$Header;->range:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getGet$musicLibrary_release()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder$Header;->get:Ljava/lang/String;

    return-object v0
.end method

.method public final getRange$musicLibrary_release()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder$Header;->range:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Header get: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder$Header;->get:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder$Header;->range:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
