.class public abstract Landroid/support/v7/preference/PreferenceManager$PreferenceComparisonCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/preference/PreferenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PreferenceComparisonCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract arePreferenceContentsTheSame(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;)Z
.end method

.method public abstract arePreferenceItemsTheSame(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/Preference;)Z
.end method
