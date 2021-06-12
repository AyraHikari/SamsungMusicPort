.class public Landroid/support/v4/icu/SeslLocaleDataReflector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/icu/SeslLocaleDataReflector$LocaleDataApi21Impl;,
        Landroid/support/v4/icu/SeslLocaleDataReflector$LocaleDataBaseImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/icu/SeslLocaleDataReflector$LocaleDataBaseImpl;

.field private static final mClassName:Ljava/lang/String; = "libcore.icu.LocaleData"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 92
    new-instance v0, Landroid/support/v4/icu/SeslLocaleDataReflector$LocaleDataApi21Impl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/icu/SeslLocaleDataReflector$LocaleDataApi21Impl;-><init>(Landroid/support/v4/icu/SeslLocaleDataReflector$1;)V

    sput-object v0, Landroid/support/v4/icu/SeslLocaleDataReflector;->IMPL:Landroid/support/v4/icu/SeslLocaleDataReflector$LocaleDataBaseImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/util/Locale;)Ljava/lang/Object;
    .locals 1
    .param p0    # Ljava/util/Locale;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 102
    sget-object v0, Landroid/support/v4/icu/SeslLocaleDataReflector;->IMPL:Landroid/support/v4/icu/SeslLocaleDataReflector$LocaleDataBaseImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/icu/SeslLocaleDataReflector$LocaleDataBaseImpl;->get(Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getField_amPm(Ljava/lang/Object;)[Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 122
    sget-object v0, Landroid/support/v4/icu/SeslLocaleDataReflector;->IMPL:Landroid/support/v4/icu/SeslLocaleDataReflector$LocaleDataBaseImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/icu/SeslLocaleDataReflector$LocaleDataBaseImpl;->getField_amPm(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getField_narrowAm(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 132
    sget-object v0, Landroid/support/v4/icu/SeslLocaleDataReflector;->IMPL:Landroid/support/v4/icu/SeslLocaleDataReflector$LocaleDataBaseImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/icu/SeslLocaleDataReflector$LocaleDataBaseImpl;->getField_narrowAm(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getField_narrowPm(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 142
    sget-object v0, Landroid/support/v4/icu/SeslLocaleDataReflector;->IMPL:Landroid/support/v4/icu/SeslLocaleDataReflector$LocaleDataBaseImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/icu/SeslLocaleDataReflector$LocaleDataBaseImpl;->getField_narrowPm(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getField_zeroDigit(Ljava/lang/Object;)C
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 112
    sget-object v0, Landroid/support/v4/icu/SeslLocaleDataReflector;->IMPL:Landroid/support/v4/icu/SeslLocaleDataReflector$LocaleDataBaseImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/icu/SeslLocaleDataReflector$LocaleDataBaseImpl;->getField_zeroDigit(Ljava/lang/Object;)C

    move-result p0

    return p0
.end method
