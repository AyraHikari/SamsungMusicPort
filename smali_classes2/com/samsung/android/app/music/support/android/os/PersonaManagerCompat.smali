.class public Lcom/samsung/android/app/music/support/android/os/PersonaManagerCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final KNOX_CONTAINER_ID:Ljava/lang/String; = "com.sec.knox.moveto.containerId"

.field public static final KNOX_CONTAINER_TYPE:Ljava/lang/String; = "com.sec.knox.moveto.containerType"

.field public static final KNOX_NAME_B2B:Ljava/lang/String; = "com.sec.knox.moveto.name"

.field public static final MOVE_TO_APP_TYPE_MUSIC:I

.field public static final MOVE_TO_CONTAINER_TYPE_ECCONTAINER:I

.field public static final MOVE_TO_CONTAINER_TYPE_KNOX:I

.field public static final MOVE_TO_CONTAINER_TYPE_SECURE_FOLDER:I

.field public static final MOVE_TO_PERSONAL_TYPE_KNOX:I

.field public static final MOVE_TO_PERSONAL_TYPE_SECURE_FOLDER:I


# instance fields
.field private final manager:Lcom/samsung/android/knox/SemPersonaManager;

.field private final managersdl:Lcom/samsung/android/app/music/support/sdl/android/os/PersonaManagerSdlCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x3ea

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/app/music/support/sdl/android/os/PersonaManagerSdlCompat;->MOVE_TO_CONTAINER_TYPE_SECURE_FOLDER:I

    :goto_0
    sput v0, Lcom/samsung/android/app/music/support/android/os/PersonaManagerCompat;->MOVE_TO_CONTAINER_TYPE_SECURE_FOLDER:I

    .line 22
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x3eb

    goto :goto_1

    :cond_1
    sget v0, Lcom/samsung/android/app/music/support/sdl/android/os/PersonaManagerSdlCompat;->MOVE_TO_PERSONAL_TYPE_SECURE_FOLDER:I

    :goto_1
    sput v0, Lcom/samsung/android/app/music/support/android/os/PersonaManagerCompat;->MOVE_TO_PERSONAL_TYPE_SECURE_FOLDER:I

    .line 26
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x3ec

    goto :goto_2

    :cond_2
    sget v0, Lcom/samsung/android/app/music/support/sdl/android/os/PersonaManagerSdlCompat;->MOVE_TO_PERSONAL_TYPE_KNOX:I

    :goto_2
    sput v0, Lcom/samsung/android/app/music/support/android/os/PersonaManagerCompat;->MOVE_TO_PERSONAL_TYPE_KNOX:I

    .line 30
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x3e8

    goto :goto_3

    :cond_3
    sget v0, Lcom/samsung/android/app/music/support/sdl/android/os/PersonaManagerSdlCompat;->MOVE_TO_CONTAINER_TYPE_ECCONTAINER:I

    :goto_3
    sput v0, Lcom/samsung/android/app/music/support/android/os/PersonaManagerCompat;->MOVE_TO_CONTAINER_TYPE_ECCONTAINER:I

    .line 34
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x3e9

    goto :goto_4

    :cond_4
    sget v0, Lcom/samsung/android/app/music/support/sdl/android/os/PersonaManagerSdlCompat;->MOVE_TO_CONTAINER_TYPE_KNOX:I

    :goto_4
    sput v0, Lcom/samsung/android/app/music/support/android/os/PersonaManagerCompat;->MOVE_TO_CONTAINER_TYPE_KNOX:I

    .line 38
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/4 v0, 0x3

    sput v0, Lcom/samsung/android/app/music/support/android/os/PersonaManagerCompat;->MOVE_TO_APP_TYPE_MUSIC:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "persona"

    .line 50
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object p1, p0, Lcom/samsung/android/app/music/support/android/os/PersonaManagerCompat;->manager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 51
    iput-object v1, p0, Lcom/samsung/android/app/music/support/android/os/PersonaManagerCompat;->managersdl:Lcom/samsung/android/app/music/support/sdl/android/os/PersonaManagerSdlCompat;

    goto :goto_0

    .line 53
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/support/sdl/android/os/PersonaManagerSdlCompat;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/support/sdl/android/os/PersonaManagerSdlCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/android/os/PersonaManagerCompat;->managersdl:Lcom/samsung/android/app/music/support/sdl/android/os/PersonaManagerSdlCompat;

    .line 54
    iput-object v1, p0, Lcom/samsung/android/app/music/support/android/os/PersonaManagerCompat;->manager:Lcom/samsung/android/knox/SemPersonaManager;

    :goto_0
    return-void
.end method

.method public static getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 1

    .line 75
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 76
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 78
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/os/PersonaManagerSdlCompat;->getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .line 67
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 68
    invoke-static {p0, p1}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 70
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/support/sdl/android/os/PersonaManagerSdlCompat;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static isSecureFolderId(I)Z
    .locals 1

    .line 83
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 84
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p0

    return p0

    .line 86
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/os/PersonaManagerSdlCompat;->isSecureFolderId(I)Z

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

    .line 59
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/os/PersonaManagerCompat;->manager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/SemPersonaManager;->getMoveToKnoxMenuList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/os/PersonaManagerCompat;->managersdl:Lcom/samsung/android/app/music/support/sdl/android/os/PersonaManagerSdlCompat;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/support/sdl/android/os/PersonaManagerSdlCompat;->getMoveToKnoxMenuList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method
