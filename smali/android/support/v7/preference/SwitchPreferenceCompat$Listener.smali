.class Landroid/support/v7/preference/SwitchPreferenceCompat$Listener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/preference/SwitchPreferenceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/preference/SwitchPreferenceCompat;


# direct methods
.method private constructor <init>(Landroid/support/v7/preference/SwitchPreferenceCompat;)V
    .locals 0

    .line 54
    iput-object p1, p0, Landroid/support/v7/preference/SwitchPreferenceCompat$Listener;->this$0:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/preference/SwitchPreferenceCompat;Landroid/support/v7/preference/SwitchPreferenceCompat$1;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Landroid/support/v7/preference/SwitchPreferenceCompat$Listener;-><init>(Landroid/support/v7/preference/SwitchPreferenceCompat;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 57
    iget-object v0, p0, Landroid/support/v7/preference/SwitchPreferenceCompat$Listener;->this$0:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    xor-int/lit8 p2, p2, 0x1

    .line 60
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void

    .line 64
    :cond_0
    iget-object p1, p0, Landroid/support/v7/preference/SwitchPreferenceCompat$Listener;->this$0:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    return-void
.end method
