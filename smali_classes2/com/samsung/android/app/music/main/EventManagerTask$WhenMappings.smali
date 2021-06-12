.class public final synthetic Lcom/samsung/android/app/music/main/EventManagerTask$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic a:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;->values()[Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/app/music/main/EventManagerTask$WhenMappings;->a:[I

    sget-object v0, Lcom/samsung/android/app/music/main/EventManagerTask$WhenMappings;->a:[I

    sget-object v1, Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;->LINK:Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lcom/samsung/android/app/music/main/EventManagerTask$WhenMappings;->a:[I

    sget-object v1, Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;->IMAGE_DEEPLINK:Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v0, Lcom/samsung/android/app/music/main/EventManagerTask$WhenMappings;->a:[I

    sget-object v1, Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;->IMAGE_WEBLINK:Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v0, Lcom/samsung/android/app/music/main/EventManagerTask$WhenMappings;->a:[I

    sget-object v1, Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;->IMAGE_NO_ACTION:Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/main/EventManagerTask$PopupType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    return-void
.end method
