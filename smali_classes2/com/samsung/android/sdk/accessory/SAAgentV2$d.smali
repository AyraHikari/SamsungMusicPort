.class final Lcom/samsung/android/sdk/accessory/SAAgentV2$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/accessory/SAAgentV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$d;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$d;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$d;->c:Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/sdk/accessory/SAAgentV2$d;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$d;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/sdk/accessory/SAAgentV2$d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$d;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/sdk/accessory/SAAgentV2$d;)Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/SAAgentV2$d;->c:Lcom/samsung/android/sdk/accessory/SAAgentV2$RequestAgentCallback;

    return-object p0
.end method
