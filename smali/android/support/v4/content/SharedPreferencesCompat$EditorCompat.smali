.class public final Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/SharedPreferencesCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EditorCompat"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$Helper;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static sInstance:Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;


# instance fields
.field private final mHelper:Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$Helper;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$Helper;

    invoke-direct {v0}, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$Helper;-><init>()V

    iput-object v0, p0, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;->mHelper:Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$Helper;

    return-void
.end method

.method public static getInstance()Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 65
    sget-object v0, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;->sInstance:Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;

    invoke-direct {v0}, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;-><init>()V

    sput-object v0, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;->sInstance:Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;

    .line 68
    :cond_0
    sget-object v0, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;->sInstance:Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;

    return-object v0
.end method


# virtual methods
.method public apply(Landroid/content/SharedPreferences$Editor;)V
    .locals 1
    .param p1    # Landroid/content/SharedPreferences$Editor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 79
    iget-object v0, p0, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;->mHelper:Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$Helper;

    invoke-virtual {v0, p1}, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$Helper;->apply(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method
