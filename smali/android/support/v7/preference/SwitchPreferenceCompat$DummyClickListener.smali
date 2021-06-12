.class Landroid/support/v7/preference/SwitchPreferenceCompat$DummyClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/preference/SwitchPreferenceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DummyClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/preference/SwitchPreferenceCompat;


# direct methods
.method private constructor <init>(Landroid/support/v7/preference/SwitchPreferenceCompat;)V
    .locals 0

    .line 69
    iput-object p1, p0, Landroid/support/v7/preference/SwitchPreferenceCompat$DummyClickListener;->this$0:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/preference/SwitchPreferenceCompat;Landroid/support/v7/preference/SwitchPreferenceCompat$1;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Landroid/support/v7/preference/SwitchPreferenceCompat$DummyClickListener;-><init>(Landroid/support/v7/preference/SwitchPreferenceCompat;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 72
    iget-object p1, p0, Landroid/support/v7/preference/SwitchPreferenceCompat$DummyClickListener;->this$0:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {p1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->callClickListener()V

    return-void
.end method
