.class public Lcom/samsung/android/sdk/smp/marketing/MarketingData$Popup;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/smp/marketing/MarketingData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Popup"
.end annotation


# static fields
.field static final a:[[Ljava/lang/String;

.field static final b:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x4

    .line 217
    new-array v1, v0, [[Ljava/lang/String;

    const-string v2, "body"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v3, [Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "body"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "web"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sput-object v1, Lcom/samsung/android/sdk/smp/marketing/MarketingData$Popup;->a:[[Ljava/lang/String;

    .line 224
    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/String;

    aput-object v1, v0, v3

    const-string v1, "popupmain"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "popupmain"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    new-array v1, v3, [Ljava/lang/String;

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/sdk/smp/marketing/MarketingData$Popup;->b:[[Ljava/lang/String;

    return-void
.end method

.method public static a(I)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v1, 0x4

    if-gt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
