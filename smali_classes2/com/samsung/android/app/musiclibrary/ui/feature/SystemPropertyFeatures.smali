.class public interface abstract Lcom/samsung/android/app/musiclibrary/ui/feature/SystemPropertyFeatures;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A_:Ljava/lang/String;

.field public static final p:Ljava/lang/String;

.field public static final q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/BuildCompat;->getProductName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/feature/SystemPropertyFeatures;->p:Ljava/lang/String;

    .line 9
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/SystemPropertiesCompat;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/feature/SystemPropertyFeatures;->q:Ljava/lang/String;

    .line 11
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/SystemPropertiesCompat;->getCountryIsoCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/feature/SystemPropertyFeatures;->A_:Ljava/lang/String;

    return-void
.end method
