.class Lcom/samsung/android/sdk/smp/marketing/MarketingParser$AppData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/smp/marketing/MarketingParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppData"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$AppData;->a:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$AppData;->b:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$AppData;->c:Ljava/lang/String;

    return-void
.end method
