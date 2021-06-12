.class public Lcom/samsung/android/app/music/support/android/content/pm/PackageManagerCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FEATURE_COVER_SVIEW:Ljava/lang/String;

.field public static final FEATURE_FOLDER_TYPE:Ljava/lang/String;

.field public static final FEATURE_HOVERING_UI:Ljava/lang/String;

.field public static final MATCH_UNINSTALLED_PACKAGES:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const-string v0, "com.sec.feature.folder_type"

    sput-object v0, Lcom/samsung/android/app/music/support/android/content/pm/PackageManagerCompat;->FEATURE_FOLDER_TYPE:Ljava/lang/String;

    .line 14
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const-string v0, "com.sec.feature.hovering_ui"

    sput-object v0, Lcom/samsung/android/app/music/support/android/content/pm/PackageManagerCompat;->FEATURE_HOVERING_UI:Ljava/lang/String;

    .line 18
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const-string v0, "com.sec.feature.cover.sview"

    sput-object v0, Lcom/samsung/android/app/music/support/android/content/pm/PackageManagerCompat;->FEATURE_COVER_SVIEW:Ljava/lang/String;

    .line 22
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/16 v0, 0x2000

    sput v0, Lcom/samsung/android/app/music/support/android/content/pm/PackageManagerCompat;->MATCH_UNINSTALLED_PACKAGES:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
