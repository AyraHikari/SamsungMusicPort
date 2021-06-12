.class public final Lcom/samsung/android/sdk/spage/card/CardContent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/ContentValues;

.field private final b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/spage/card/CardContent;->a:Landroid/content/ContentValues;

    const-string v0, "NORMAL"

    .line 307
    iput-object v0, p0, Lcom/samsung/android/sdk/spage/card/CardContent;->d:Ljava/lang/String;

    .line 316
    iput p1, p0, Lcom/samsung/android/sdk/spage/card/CardContent;->b:I

    .line 317
    iget-object v0, p0, Lcom/samsung/android/sdk/spage/card/CardContent;->a:Landroid/content/ContentValues;

    const-string v1, "idNo"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/ContentValues;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/samsung/android/sdk/spage/card/CardContent;->a:Landroid/content/ContentValues;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 491
    iget-object v0, p0, Lcom/samsung/android/sdk/spage/card/CardContent;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "NORMAL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 492
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "if template id already set, extra state should be NORMAL or not set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 494
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/sdk/spage/card/CardContent;->d:Ljava/lang/String;

    .line 495
    iget-object v0, p0, Lcom/samsung/android/sdk/spage/card/CardContent;->a:Landroid/content/ContentValues;

    const-string v1, "extraState"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/samsung/android/sdk/spage/card/base/FieldData;)V
    .locals 1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 356
    iget-object v0, p0, Lcom/samsung/android/sdk/spage/card/CardContent;->a:Landroid/content/ContentValues;

    invoke-interface {p2}, Lcom/samsung/android/sdk/spage/card/base/FieldData;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 354
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Key is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 351
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "FieldData is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    const-string v0, "NORMAL"

    .line 506
    iget-object v1, p0, Lcom/samsung/android/sdk/spage/card/CardContent;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    iput-object p1, p0, Lcom/samsung/android/sdk/spage/card/CardContent;->c:Ljava/lang/String;

    .line 510
    iget-object v0, p0, Lcom/samsung/android/sdk/spage/card/CardContent;->a:Landroid/content/ContentValues;

    const-string v1, "templateId"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 507
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "if extra state is NOT NORMAL, template id cannot be set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
