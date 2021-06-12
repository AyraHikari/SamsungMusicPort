.class final Lcom/facebook/places/internal/LocationPackageManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/places/internal/LocationPackageManager;->newLocationScanFuture(Lcom/facebook/places/internal/LocationScanner;Lcom/facebook/places/internal/LocationPackageRequestParams;)Ljava/util/concurrent/FutureTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/facebook/places/internal/LocationPackage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$locationScanner:Lcom/facebook/places/internal/LocationScanner;


# direct methods
.method constructor <init>(Lcom/facebook/places/internal/LocationScanner;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/facebook/places/internal/LocationPackageManager$2;->val$locationScanner:Lcom/facebook/places/internal/LocationScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/facebook/places/internal/LocationPackage;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 145
    new-instance v0, Lcom/facebook/places/internal/LocationPackage;

    invoke-direct {v0}, Lcom/facebook/places/internal/LocationPackage;-><init>()V

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/facebook/places/internal/LocationPackageManager$2;->val$locationScanner:Lcom/facebook/places/internal/LocationScanner;

    invoke-interface {v1}, Lcom/facebook/places/internal/LocationScanner;->getLocation()Landroid/location/Location;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/places/internal/LocationPackage;->location:Landroid/location/Location;
    :try_end_0
    .catch Lcom/facebook/places/internal/ScannerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    :catch_0
    sget-object v1, Lcom/facebook/places/internal/ScannerException$Type;->UNKNOWN_ERROR:Lcom/facebook/places/internal/ScannerException$Type;

    iput-object v1, v0, Lcom/facebook/places/internal/LocationPackage;->locationError:Lcom/facebook/places/internal/ScannerException$Type;

    goto :goto_0

    :catch_1
    move-exception v1

    .line 149
    iget-object v2, v1, Lcom/facebook/places/internal/ScannerException;->type:Lcom/facebook/places/internal/ScannerException$Type;

    iput-object v2, v0, Lcom/facebook/places/internal/LocationPackage;->locationError:Lcom/facebook/places/internal/ScannerException$Type;

    const-string v2, "Exception while getting location"

    .line 150
    invoke-static {v2, v1}, Lcom/facebook/places/internal/LocationPackageManager;->access$300(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 142
    invoke-virtual {p0}, Lcom/facebook/places/internal/LocationPackageManager$2;->call()Lcom/facebook/places/internal/LocationPackage;

    move-result-object v0

    return-object v0
.end method
