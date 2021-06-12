.class public final enum Lcom/samsung/android/app/music/activity/PermissionLegalActivity$HelpButtonTag;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/activity/PermissionLegalActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HelpButtonTag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/music/activity/PermissionLegalActivity$HelpButtonTag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/activity/PermissionLegalActivity$HelpButtonTag;

.field public static final enum AGREE:Lcom/samsung/android/app/music/activity/PermissionLegalActivity$HelpButtonTag;

.field public static final enum START:Lcom/samsung/android/app/music/activity/PermissionLegalActivity$HelpButtonTag;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/app/music/activity/PermissionLegalActivity$HelpButtonTag;

    new-instance v1, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$HelpButtonTag;

    const-string v2, "AGREE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$HelpButtonTag;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$HelpButtonTag;->AGREE:Lcom/samsung/android/app/music/activity/PermissionLegalActivity$HelpButtonTag;

    aput-object v1, v0, v3

    new-instance v1, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$HelpButtonTag;

    const-string v2, "START"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$HelpButtonTag;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$HelpButtonTag;->START:Lcom/samsung/android/app/music/activity/PermissionLegalActivity$HelpButtonTag;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$HelpButtonTag;->$VALUES:[Lcom/samsung/android/app/music/activity/PermissionLegalActivity$HelpButtonTag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 331
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/activity/PermissionLegalActivity$HelpButtonTag;
    .locals 1

    const-class v0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$HelpButtonTag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$HelpButtonTag;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/music/activity/PermissionLegalActivity$HelpButtonTag;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/music/activity/PermissionLegalActivity$HelpButtonTag;->$VALUES:[Lcom/samsung/android/app/music/activity/PermissionLegalActivity$HelpButtonTag;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/activity/PermissionLegalActivity$HelpButtonTag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/activity/PermissionLegalActivity$HelpButtonTag;

    return-object v0
.end method
