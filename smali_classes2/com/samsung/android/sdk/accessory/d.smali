.class public final Lcom/samsung/android/sdk/accessory/d;
.super Ljava/lang/Exception;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/samsung/android/sdk/accessory/d;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 p1, 0x800

    iput p1, p0, Lcom/samsung/android/sdk/accessory/d;->a:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/accessory/d;->a:I

    return v0
.end method
