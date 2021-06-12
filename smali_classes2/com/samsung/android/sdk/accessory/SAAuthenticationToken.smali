.class public Lcom/samsung/android/sdk/accessory/SAAuthenticationToken;
.super Ljava/lang/Object;


# instance fields
.field private a:[B

.field private b:I


# direct methods
.method constructor <init>(I[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/sdk/accessory/SAAuthenticationToken;->a:[B

    :cond_0
    iput p1, p0, Lcom/samsung/android/sdk/accessory/SAAuthenticationToken;->b:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/SAAuthenticationToken;->a:[B

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/SAAuthenticationToken;->a:[B

    const-string v2, "ISO-8859-1"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    const-string v0, "Failed to encode Key!! charsetISO-8859-1 is not supported"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Type:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/sdk/accessory/SAAuthenticationToken;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
