.class public Lcom/samsung/android/sdk/smp/network/NetworkResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZI)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-boolean p1, p0, Lcom/samsung/android/sdk/smp/network/NetworkResult;->a:Z

    .line 10
    iput p2, p0, Lcom/samsung/android/sdk/smp/network/NetworkResult;->b:I

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/samsung/android/sdk/smp/network/NetworkResult;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ZILjava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-boolean p1, p0, Lcom/samsung/android/sdk/smp/network/NetworkResult;->a:Z

    .line 16
    iput p2, p0, Lcom/samsung/android/sdk/smp/network/NetworkResult;->b:I

    .line 17
    iput-object p3, p0, Lcom/samsung/android/sdk/smp/network/NetworkResult;->c:Ljava/lang/String;

    return-void
.end method
