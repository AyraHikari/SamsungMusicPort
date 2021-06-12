.class Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$2;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private a(I)V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$2;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->d(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$2;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->d(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$2;->b(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 240
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$2;->c(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 243
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$2;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-static {p1}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->c(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0b0104

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 247
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$2;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->c(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    return-void
.end method

.method private b(I)Ljava/lang/String;
    .locals 4

    .line 253
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$2;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->d(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->c()I

    move-result v0

    .line 254
    iget-object v1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$2;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v1}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->d(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->f()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    if-lez v0, :cond_3

    if-ne v0, v3, :cond_0

    if-ne p1, v3, :cond_0

    .line 257
    iget-object p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$2;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-static {p1}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->c(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0b026d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_0
    if-ne v0, v3, :cond_1

    if-le p1, v3, :cond_1

    .line 259
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$2;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->c(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0271

    new-array v3, v3, [Ljava/lang/Object;

    .line 260
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    .line 259
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_1
    if-le v0, v3, :cond_2

    if-ne p1, v3, :cond_2

    .line 262
    iget-object p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$2;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-static {p1}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->c(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0b026e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 264
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$2;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->c(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0272

    new-array v3, v3, [Ljava/lang/Object;

    .line 265
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    .line 264
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_3
    if-ne p1, v3, :cond_4

    .line 269
    iget-object p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$2;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-static {p1}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->c(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0b0275

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 271
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$2;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->c(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0277

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_5
    if-lez v0, :cond_9

    if-ne v0, v3, :cond_6

    if-ne p1, v3, :cond_6

    .line 277
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$2;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->c(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b026f

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_6
    if-ne v0, v3, :cond_7

    if-le p1, v3, :cond_7

    .line 279
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$2;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->c(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0274

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_7
    if-le v0, v3, :cond_8

    if-ne p1, v3, :cond_8

    .line 281
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$2;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->c(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0270

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 283
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$2;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->c(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0273

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_9
    if-ne p1, v3, :cond_a

    .line 287
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$2;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->c(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0276

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_a
    if-le p1, v3, :cond_b

    .line 289
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$2;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->c(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0278

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_b
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private c(I)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$2;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->d(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->e()Ljava/lang/String;

    move-result-object v0

    .line 303
    iget-object v1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$2;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v1}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->d(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->f()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-ne p1, v4, :cond_1

    .line 305
    iget-object p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$2;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-static {p1}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->c(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0b031e

    new-array v1, v4, [Ljava/lang/Object;

    sget-object v2, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->d:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$2;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->c(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0321

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    sget-object p1, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->d:Ljava/lang/String;

    aput-object p1, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 312
    :cond_2
    sget-object v1, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-ne p1, v4, :cond_3

    .line 314
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$2;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->c(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b031f

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    sget-object p1, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->d:Ljava/lang/String;

    aput-object p1, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 317
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$2;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->c(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0322

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    sget-object p1, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->d:Ljava/lang/String;

    aput-object p1, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    if-ne p1, v4, :cond_5

    .line 322
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$2;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->c(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0320

    new-array v2, v4, [Ljava/lang/Object;

    .line 323
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    .line 322
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 325
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$2;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->c(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0323

    new-array v2, v4, [Ljava/lang/Object;

    .line 326
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    .line 325
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .locals 4

    monitor-enter p0

    .line 187
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const-string v0, "PrivateMode"

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mResultHandler - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v1, :cond_3

    packed-switch v0, :pswitch_data_0

    .line 229
    iget-object p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$2;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-static {p1}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->g(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)V

    goto/16 :goto_0

    .line 201
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$2;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->a(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;I)I

    .line 202
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 203
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$2;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->f(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$OnPrivateOperationListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$2;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v1}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->e(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)I

    move-result v1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$OnPrivateOperationListener;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 207
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$2;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->a(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;I)I

    .line 208
    iget-object p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$2;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    .line 209
    invoke-static {p1}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->c(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b02cb

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 210
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$2;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->f(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$OnPrivateOperationListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$2;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v1}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->e(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$OnPrivateOperationListener;->a(ILjava/lang/String;)V

    .line 211
    iget-object p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$2;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-static {p1}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->g(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)V

    goto :goto_0

    .line 221
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$2;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->a(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;I)I

    .line 222
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 223
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$2;->a(I)V

    .line 225
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$2;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-static {p1}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->f(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$OnPrivateOperationListener;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$2;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->e(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$OnPrivateOperationListener;->a(ILjava/lang/String;)V

    .line 226
    iget-object p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$2;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-static {p1}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->g(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)V

    goto :goto_0

    .line 214
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$2;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->a(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;I)I

    .line 215
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 216
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$2;->a(I)V

    .line 218
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$2;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-static {p1}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->g(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)V

    goto :goto_0

    .line 192
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 193
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "progress"

    .line 194
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "curFilename"

    .line 195
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "curPercent"

    .line 196
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 197
    iget-object v2, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$2;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-static {v2}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->f(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;)Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$OnPrivateOperationListener;

    move-result-object v2

    invoke-interface {v2, v0, v1, p1}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation$OnPrivateOperationListener;->a(ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 186
    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
