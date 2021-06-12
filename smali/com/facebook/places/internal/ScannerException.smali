.class public Lcom/facebook/places/internal/ScannerException;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/places/internal/ScannerException$Type;
    }
.end annotation


# instance fields
.field public type:Lcom/facebook/places/internal/ScannerException$Type;


# direct methods
.method public constructor <init>(Lcom/facebook/places/internal/ScannerException$Type;)V
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/places/internal/ScannerException$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/facebook/places/internal/ScannerException;->type:Lcom/facebook/places/internal/ScannerException$Type;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/places/internal/ScannerException$Type;Ljava/lang/Exception;)V
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/places/internal/ScannerException$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    iput-object p1, p0, Lcom/facebook/places/internal/ScannerException;->type:Lcom/facebook/places/internal/ScannerException$Type;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/places/internal/ScannerException$Type;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lcom/facebook/places/internal/ScannerException;->type:Lcom/facebook/places/internal/ScannerException$Type;

    return-void
.end method
