.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/Preference$Key$LegalInformation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/Preference$Key;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LegalInformation"
.end annotation


# static fields
# The value of this static final field might be set in the static constructor
.field private static final AGREED:Ljava/lang/String; = "legal_information_agreed"

# The value of this static final field might be set in the static constructor
.field private static final AGREED_VERSION:Ljava/lang/String; = "legal_version_by_local"

.field public static final INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/Preference$Key$LegalInformation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/Preference$Key$LegalInformation;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/Preference$Key$LegalInformation;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/Preference$Key$LegalInformation;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/Preference$Key$LegalInformation;

    const-string v0, "legal_information_agreed"

    .line 16
    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/Preference$Key$LegalInformation;->AGREED:Ljava/lang/String;

    const-string v0, "legal_version_by_local"

    .line 17
    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/Preference$Key$LegalInformation;->AGREED_VERSION:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAGREED()Ljava/lang/String;
    .locals 1

    .line 16
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/Preference$Key$LegalInformation;->AGREED:Ljava/lang/String;

    return-object v0
.end method

.method public final getAGREED_VERSION()Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/Preference$Key$LegalInformation;->AGREED_VERSION:Ljava/lang/String;

    return-object v0
.end method
