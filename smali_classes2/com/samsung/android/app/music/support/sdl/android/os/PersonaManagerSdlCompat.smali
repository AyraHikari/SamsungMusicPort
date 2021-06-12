.class public Lcom/samsung/android/app/music/support/sdl/android/os/PersonaManagerSdlCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MOVE_TO_APP_TYPE_MUSIC:I = 0x3

.field public static final MOVE_TO_CONTAINER_TYPE_ECCONTAINER:I

.field public static final MOVE_TO_CONTAINER_TYPE_KNOX:I

.field public static final MOVE_TO_CONTAINER_TYPE_SECURE_FOLDER:I

.field public static final MOVE_TO_PERSONAL_TYPE_KNOX:I

.field public static final MOVE_TO_PERSONAL_TYPE_SECURE_FOLDER:I


# instance fields
.field private final manager:Landroid/os/PersonaManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v1, 0x8fe

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/PersonaManager;->MOVE_TO_CONTAINER_TYPE_ECCONTAINER:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x3e8

    :goto_0
    sput v0, Lcom/samsung/android/app/music/support/sdl/android/os/PersonaManagerSdlCompat;->MOVE_TO_CONTAINER_TYPE_ECCONTAINER:I

    .line 18
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    if-lt v0, v1, :cond_1

    sget v0, Landroid/os/PersonaManager;->MOVE_TO_CONTAINER_TYPE_KNOX:I

    goto :goto_1

    :cond_1
    const/16 v0, 0x3e9

    :goto_1
    sput v0, Lcom/samsung/android/app/music/support/sdl/android/os/PersonaManagerSdlCompat;->MOVE_TO_CONTAINER_TYPE_KNOX:I

    .line 21
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    if-lt v0, v1, :cond_2

    sget v0, Landroid/os/PersonaManager;->MOVE_TO_CONTAINER_TYPE_SECURE_FOLDER:I

    goto :goto_2

    :cond_2
    const/16 v0, 0x3ea

    :goto_2
    sput v0, Lcom/samsung/android/app/music/support/sdl/android/os/PersonaManagerSdlCompat;->MOVE_TO_CONTAINER_TYPE_SECURE_FOLDER:I

    .line 24
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    if-lt v0, v1, :cond_3

    sget v0, Landroid/os/PersonaManager;->MOVE_TO_PERSONAL_TYPE_SECURE_FOLDER:I

    goto :goto_3

    :cond_3
    const/16 v0, 0x3eb

    :goto_3
    sput v0, Lcom/samsung/android/app/music/support/sdl/android/os/PersonaManagerSdlCompat;->MOVE_TO_PERSONAL_TYPE_SECURE_FOLDER:I

    .line 27
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    if-lt v0, v1, :cond_4

    sget v0, Landroid/os/PersonaManager;->MOVE_TO_PERSONAL_TYPE_KNOX:I

    goto :goto_4

    :cond_4
    const/16 v0, 0x3ec

    :goto_4
    sput v0, Lcom/samsung/android/app/music/support/sdl/android/os/PersonaManagerSdlCompat;->MOVE_TO_PERSONAL_TYPE_KNOX:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "persona"

    .line 34
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PersonaManager;

    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/android/os/PersonaManagerSdlCompat;->manager:Landroid/os/PersonaManager;

    return-void
.end method

.method public static getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 0

    .line 46
    invoke-static {p0}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    .line 42
    invoke-static {p0, p1}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static isSecureFolderId(I)Z
    .locals 0

    .line 50
    invoke-static {p0}, Landroid/os/PersonaManager;->isSecureFolderId(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getMoveToKnoxMenuList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/os/PersonaManagerSdlCompat;->manager:Landroid/os/PersonaManager;

    invoke-virtual {v0, p1}, Landroid/os/PersonaManager;->getMoveToKnoxMenuList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method
