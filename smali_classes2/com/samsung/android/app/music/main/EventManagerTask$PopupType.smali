.class public final enum Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/main/EventManagerTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PopupType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;

.field public static final enum IMAGE_DEEPLINK:Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;

.field public static final enum IMAGE_NO_ACTION:Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;

.field public static final enum IMAGE_WEBLINK:Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;

.field public static final enum LINK:Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;

    new-instance v1, Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;

    const-string v2, "LINK"

    const-string v3, "1"

    const/4 v4, 0x0

    .line 469
    invoke-direct {v1, v2, v4, v3}, Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;->LINK:Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;

    aput-object v1, v0, v4

    new-instance v1, Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;

    const-string v2, "IMAGE_DEEPLINK"

    const-string v3, "2"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;->IMAGE_DEEPLINK:Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;

    aput-object v1, v0, v4

    new-instance v1, Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;

    const-string v2, "IMAGE_WEBLINK"

    const-string v3, "3"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v4, v3}, Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;->IMAGE_WEBLINK:Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;

    aput-object v1, v0, v4

    new-instance v1, Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;

    const-string v2, "IMAGE_NO_ACTION"

    const-string v3, "4"

    const/4 v4, 0x3

    invoke-direct {v1, v2, v4, v3}, Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;->IMAGE_NO_ACTION:Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;->$VALUES:[Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 468
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;
    .locals 1

    const-class v0, Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;->$VALUES:[Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;->value:Ljava/lang/String;

    return-object v0
.end method
