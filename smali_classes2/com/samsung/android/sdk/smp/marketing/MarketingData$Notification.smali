.class public Lcom/samsung/android/sdk/smp/marketing/MarketingData$Notification;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/smp/marketing/MarketingData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Notification"
.end annotation


# static fields
.field static final a:[[Ljava/lang/String;

.field static final b:[[Ljava/lang/String;

.field static final c:[[Ljava/lang/String;

.field static final d:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x3

    .line 135
    new-array v1, v0, [[Ljava/lang/String;

    const-string v2, "contentTitle"

    const-string v3, "contentText"

    const-string v4, "subContentText"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v3, [Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v2, v3, [Ljava/lang/String;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sput-object v1, Lcom/samsung/android/sdk/smp/marketing/MarketingData$Notification;->a:[[Ljava/lang/String;

    const/4 v1, 0x5

    .line 140
    new-array v2, v1, [[Ljava/lang/String;

    new-array v6, v3, [Ljava/lang/String;

    aput-object v6, v2, v3

    const-string v6, "contentTitle"

    const-string v7, "contentText"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    const-string v6, "contentTitle"

    const-string v7, "contentText"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const-string v6, "contentTitle"

    const-string v7, "contentText"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v0

    new-array v6, v3, [Ljava/lang/String;

    const/4 v7, 0x4

    aput-object v6, v2, v7

    sput-object v2, Lcom/samsung/android/sdk/smp/marketing/MarketingData$Notification;->b:[[Ljava/lang/String;

    .line 147
    new-array v2, v0, [[Ljava/lang/String;

    const-string v6, "smallIcon"

    const-string v8, "largeIcon"

    filled-new-array {v6, v8}, [Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    const-string v6, "banner"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    const-string v6, "flip_f"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    sput-object v2, Lcom/samsung/android/sdk/smp/marketing/MarketingData$Notification;->c:[[Ljava/lang/String;

    .line 152
    new-array v1, v1, [[Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/String;

    aput-object v2, v1, v3

    const-string v2, "smallIcon"

    const-string v3, "largeIcon"

    const-string v6, "bigPicture"

    filled-new-array {v2, v3, v6}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "smallIcon"

    const-string v3, "largeIcon"

    const-string v4, "bigPicture"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "smallIcon"

    const-string v3, "largeIcon"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "flip_e"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    sput-object v1, Lcom/samsung/android/sdk/smp/marketing/MarketingData$Notification;->d:[[Ljava/lang/String;

    return-void
.end method

.method public static a(II)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v1, 0x3

    if-gt p0, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    return v0

    :cond_0
    :goto_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
