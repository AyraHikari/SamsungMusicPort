.class final Landroid/support/v4/provider/FontsContractCompat$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/provider/FontsContractCompat;->requestFont(Landroid/content/Context;Landroid/support/v4/provider/FontRequest;Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;

.field final synthetic val$callerThreadHandler:Landroid/os/Handler;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$request:Landroid/support/v4/provider/FontRequest;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/support/v4/provider/FontRequest;Landroid/os/Handler;Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;)V
    .locals 0

    .line 529
    iput-object p1, p0, Landroid/support/v4/provider/FontsContractCompat$4;->val$context:Landroid/content/Context;

    iput-object p2, p0, Landroid/support/v4/provider/FontsContractCompat$4;->val$request:Landroid/support/v4/provider/FontRequest;

    iput-object p3, p0, Landroid/support/v4/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    iput-object p4, p0, Landroid/support/v4/provider/FontsContractCompat$4;->val$callback:Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 535
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/provider/FontsContractCompat$4;->val$context:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v4/provider/FontsContractCompat$4;->val$request:Landroid/support/v4/provider/FontRequest;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/support/v4/provider/FontsContractCompat;->fetchFonts(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/support/v4/provider/FontRequest;)Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    invoke-virtual {v0}, Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;->getStatusCode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 548
    invoke-virtual {v0}, Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;->getStatusCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 569
    iget-object v0, p0, Landroid/support/v4/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v1, Landroid/support/v4/provider/FontsContractCompat$4$4;

    invoke-direct {v1, p0}, Landroid/support/v4/provider/FontsContractCompat$4$4;-><init>(Landroid/support/v4/provider/FontsContractCompat$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 559
    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v1, Landroid/support/v4/provider/FontsContractCompat$4$3;

    invoke-direct {v1, p0}, Landroid/support/v4/provider/FontsContractCompat$4$3;-><init>(Landroid/support/v4/provider/FontsContractCompat$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 550
    :pswitch_1
    iget-object v0, p0, Landroid/support/v4/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v1, Landroid/support/v4/provider/FontsContractCompat$4$2;

    invoke-direct {v1, p0}, Landroid/support/v4/provider/FontsContractCompat$4$2;-><init>(Landroid/support/v4/provider/FontsContractCompat$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 580
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;->getFonts()[Landroid/support/v4/provider/FontsContractCompat$FontInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 581
    array-length v1, v0

    if-nez v1, :cond_1

    goto :goto_2

    .line 591
    :cond_1
    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    .line 592
    invoke-virtual {v4}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->getResultCode()I

    move-result v5

    if-eqz v5, :cond_3

    .line 595
    invoke-virtual {v4}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->getResultCode()I

    move-result v0

    if-gez v0, :cond_2

    .line 599
    iget-object v0, p0, Landroid/support/v4/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v1, Landroid/support/v4/provider/FontsContractCompat$4$6;

    invoke-direct {v1, p0}, Landroid/support/v4/provider/FontsContractCompat$4$6;-><init>(Landroid/support/v4/provider/FontsContractCompat$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 607
    :cond_2
    iget-object v1, p0, Landroid/support/v4/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v2, Landroid/support/v4/provider/FontsContractCompat$4$7;

    invoke-direct {v2, p0, v0}, Landroid/support/v4/provider/FontsContractCompat$4$7;-><init>(Landroid/support/v4/provider/FontsContractCompat$4;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 618
    :cond_4
    iget-object v1, p0, Landroid/support/v4/provider/FontsContractCompat$4;->val$context:Landroid/content/Context;

    invoke-static {v1, v2, v0}, Landroid/support/v4/provider/FontsContractCompat;->buildTypeface(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroid/support/v4/provider/FontsContractCompat$FontInfo;)Landroid/graphics/Typeface;

    move-result-object v0

    if-nez v0, :cond_5

    .line 623
    iget-object v0, p0, Landroid/support/v4/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v1, Landroid/support/v4/provider/FontsContractCompat$4$8;

    invoke-direct {v1, p0}, Landroid/support/v4/provider/FontsContractCompat$4$8;-><init>(Landroid/support/v4/provider/FontsContractCompat$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 633
    :cond_5
    iget-object v1, p0, Landroid/support/v4/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v2, Landroid/support/v4/provider/FontsContractCompat$4$9;

    invoke-direct {v2, p0, v0}, Landroid/support/v4/provider/FontsContractCompat$4$9;-><init>(Landroid/support/v4/provider/FontsContractCompat$4;Landroid/graphics/Typeface;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 582
    :cond_6
    :goto_2
    iget-object v0, p0, Landroid/support/v4/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v1, Landroid/support/v4/provider/FontsContractCompat$4$5;

    invoke-direct {v1, p0}, Landroid/support/v4/provider/FontsContractCompat$4$5;-><init>(Landroid/support/v4/provider/FontsContractCompat$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 537
    :catch_0
    iget-object v0, p0, Landroid/support/v4/provider/FontsContractCompat$4;->val$callerThreadHandler:Landroid/os/Handler;

    new-instance v1, Landroid/support/v4/provider/FontsContractCompat$4$1;

    invoke-direct {v1, p0}, Landroid/support/v4/provider/FontsContractCompat$4$1;-><init>(Landroid/support/v4/provider/FontsContractCompat$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
