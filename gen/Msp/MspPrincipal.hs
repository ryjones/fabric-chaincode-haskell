{-# LANGUAGE DeriveGeneric     #-}
{-# LANGUAGE DeriveAnyClass    #-}
{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE GADTs             #-}
{-# LANGUAGE TypeApplications  #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- | Generated by Haskell protocol buffer compiler. DO NOT EDIT!
module Msp.MspPrincipal where
import qualified Prelude as Hs
import qualified Proto3.Suite.Class as HsProtobuf
import qualified Proto3.Suite.DotProto as HsProtobuf
import qualified Proto3.Suite.JSONPB as HsJSONPB
import Proto3.Suite.JSONPB ((.=), (.:))
import qualified Proto3.Suite.Types as HsProtobuf
import qualified Proto3.Wire as HsProtobuf
import qualified Control.Applicative as Hs
import Control.Applicative ((<*>), (<|>), (<$>))
import qualified Control.DeepSeq as Hs
import qualified Control.Monad as Hs
import qualified Data.ByteString as Hs
import qualified Data.Coerce as Hs
import qualified Data.Int as Hs (Int16, Int32, Int64)
import qualified Data.List.NonEmpty as Hs (NonEmpty(..))
import qualified Data.Map as Hs (Map, mapKeysMonotonic)
import qualified Data.Proxy as Proxy
import qualified Data.String as Hs (fromString)
import qualified Data.Text.Lazy as Hs (Text)
import qualified Data.Vector as Hs (Vector)
import qualified Data.Word as Hs (Word16, Word32, Word64)
import qualified GHC.Enum as Hs
import qualified GHC.Generics as Hs
import qualified Unsafe.Coerce as Hs
 
data MSPPrincipal = MSPPrincipal{mspprincipalPrincipalClassification
                                 ::
                                 HsProtobuf.Enumerated Msp.MspPrincipal.MSPPrincipal_Classification,
                                 mspprincipalPrincipal :: Hs.ByteString}
                  deriving (Hs.Show, Hs.Eq, Hs.Ord, Hs.Generic, Hs.NFData)
 
instance HsProtobuf.Named MSPPrincipal where
        nameOf _ = (Hs.fromString "MSPPrincipal")
 
instance HsProtobuf.HasDefault MSPPrincipal
 
instance HsProtobuf.Message MSPPrincipal where
        encodeMessage _
          MSPPrincipal{mspprincipalPrincipalClassification =
                         mspprincipalPrincipalClassification,
                       mspprincipalPrincipal = mspprincipalPrincipal}
          = (Hs.mconcat
               [(HsProtobuf.encodeMessageField (HsProtobuf.FieldNumber 1)
                   mspprincipalPrincipalClassification),
                (HsProtobuf.encodeMessageField (HsProtobuf.FieldNumber 2)
                   mspprincipalPrincipal)])
        decodeMessage _
          = (Hs.pure MSPPrincipal) <*>
              (HsProtobuf.at HsProtobuf.decodeMessageField
                 (HsProtobuf.FieldNumber 1))
              <*>
              (HsProtobuf.at HsProtobuf.decodeMessageField
                 (HsProtobuf.FieldNumber 2))
        dotProto _
          = [(HsProtobuf.DotProtoField (HsProtobuf.FieldNumber 1)
                (HsProtobuf.Prim
                   (HsProtobuf.Named (HsProtobuf.Single "Classification")))
                (HsProtobuf.Single "principal_classification")
                []
                ""),
             (HsProtobuf.DotProtoField (HsProtobuf.FieldNumber 2)
                (HsProtobuf.Prim HsProtobuf.Bytes)
                (HsProtobuf.Single "principal")
                []
                "")]
 
instance HsJSONPB.ToJSONPB MSPPrincipal where
        toJSONPB (MSPPrincipal f1 f2)
          = (HsJSONPB.object
               ["principal_classification" .= f1, "principal" .= f2])
        toEncodingPB (MSPPrincipal f1 f2)
          = (HsJSONPB.pairs
               ["principal_classification" .= f1, "principal" .= f2])
 
instance HsJSONPB.FromJSONPB MSPPrincipal where
        parseJSONPB
          = (HsJSONPB.withObject "MSPPrincipal"
               (\ obj ->
                  (Hs.pure MSPPrincipal) <*> obj .: "principal_classification" <*>
                    obj .: "principal"))
 
instance HsJSONPB.ToJSON MSPPrincipal where
        toJSON = HsJSONPB.toAesonValue
        toEncoding = HsJSONPB.toAesonEncoding
 
instance HsJSONPB.FromJSON MSPPrincipal where
        parseJSON = HsJSONPB.parseJSONPB
 
instance HsJSONPB.ToSchema MSPPrincipal where
        declareNamedSchema _
          = do let declare_principal_classification
                     = HsJSONPB.declareSchemaRef
               mspprincipalPrincipalClassification <- declare_principal_classification
                                                        Proxy.Proxy
               let declare_principal = HsJSONPB.declareSchemaRef
               mspprincipalPrincipal <- declare_principal Proxy.Proxy
               let _ = Hs.pure MSPPrincipal <*>
                         HsJSONPB.asProxy declare_principal_classification
                         <*> HsJSONPB.asProxy declare_principal
               Hs.return
                 (HsJSONPB.NamedSchema{HsJSONPB._namedSchemaName =
                                         Hs.Just "MSPPrincipal",
                                       HsJSONPB._namedSchemaSchema =
                                         Hs.mempty{HsJSONPB._schemaParamSchema =
                                                     Hs.mempty{HsJSONPB._paramSchemaType =
                                                                 HsJSONPB.SwaggerObject},
                                                   HsJSONPB._schemaProperties =
                                                     HsJSONPB.insOrdFromList
                                                       [("principal_classification",
                                                         mspprincipalPrincipalClassification),
                                                        ("principal", mspprincipalPrincipal)]}})
 
data MSPPrincipal_Classification = MSPPrincipal_ClassificationROLE
                                 | MSPPrincipal_ClassificationORGANIZATION_UNIT
                                 | MSPPrincipal_ClassificationIDENTITY
                                 | MSPPrincipal_ClassificationANONYMITY
                                 | MSPPrincipal_ClassificationCOMBINED
                                 deriving (Hs.Show, Hs.Eq, Hs.Generic, Hs.NFData)
 
instance HsProtobuf.Named MSPPrincipal_Classification where
        nameOf _ = (Hs.fromString "MSPPrincipal_Classification")
 
instance HsProtobuf.HasDefault MSPPrincipal_Classification
 
instance Hs.Bounded MSPPrincipal_Classification where
        minBound = MSPPrincipal_ClassificationROLE
        maxBound = MSPPrincipal_ClassificationCOMBINED
 
instance Hs.Ord MSPPrincipal_Classification where
        compare x y
          = Hs.compare (HsProtobuf.fromProtoEnum x)
              (HsProtobuf.fromProtoEnum y)
 
instance HsProtobuf.ProtoEnum MSPPrincipal_Classification where
        toProtoEnumMay 0 = Hs.Just MSPPrincipal_ClassificationROLE
        toProtoEnumMay 1
          = Hs.Just MSPPrincipal_ClassificationORGANIZATION_UNIT
        toProtoEnumMay 2 = Hs.Just MSPPrincipal_ClassificationIDENTITY
        toProtoEnumMay 3 = Hs.Just MSPPrincipal_ClassificationANONYMITY
        toProtoEnumMay 4 = Hs.Just MSPPrincipal_ClassificationCOMBINED
        toProtoEnumMay _ = Hs.Nothing
        fromProtoEnum (MSPPrincipal_ClassificationROLE) = 0
        fromProtoEnum (MSPPrincipal_ClassificationORGANIZATION_UNIT) = 1
        fromProtoEnum (MSPPrincipal_ClassificationIDENTITY) = 2
        fromProtoEnum (MSPPrincipal_ClassificationANONYMITY) = 3
        fromProtoEnum (MSPPrincipal_ClassificationCOMBINED) = 4
 
instance HsJSONPB.ToJSONPB MSPPrincipal_Classification where
        toJSONPB x _ = HsJSONPB.enumFieldString x
        toEncodingPB x _ = HsJSONPB.enumFieldEncoding x
 
instance HsJSONPB.FromJSONPB MSPPrincipal_Classification where
        parseJSONPB (HsJSONPB.String "ROLE")
          = Hs.pure MSPPrincipal_ClassificationROLE
        parseJSONPB (HsJSONPB.String "ORGANIZATION_UNIT")
          = Hs.pure MSPPrincipal_ClassificationORGANIZATION_UNIT
        parseJSONPB (HsJSONPB.String "IDENTITY")
          = Hs.pure MSPPrincipal_ClassificationIDENTITY
        parseJSONPB (HsJSONPB.String "ANONYMITY")
          = Hs.pure MSPPrincipal_ClassificationANONYMITY
        parseJSONPB (HsJSONPB.String "COMBINED")
          = Hs.pure MSPPrincipal_ClassificationCOMBINED
        parseJSONPB v
          = (HsJSONPB.typeMismatch "MSPPrincipal_Classification" v)
 
instance HsJSONPB.ToJSON MSPPrincipal_Classification where
        toJSON = HsJSONPB.toAesonValue
        toEncoding = HsJSONPB.toAesonEncoding
 
instance HsJSONPB.FromJSON MSPPrincipal_Classification where
        parseJSON = HsJSONPB.parseJSONPB
 
instance HsProtobuf.Finite MSPPrincipal_Classification
 
data OrganizationUnit = OrganizationUnit{organizationUnitMspIdentifier
                                         :: Hs.Text,
                                         organizationUnitOrganizationalUnitIdentifier :: Hs.Text,
                                         organizationUnitCertifiersIdentifier :: Hs.ByteString}
                      deriving (Hs.Show, Hs.Eq, Hs.Ord, Hs.Generic, Hs.NFData)
 
instance HsProtobuf.Named OrganizationUnit where
        nameOf _ = (Hs.fromString "OrganizationUnit")
 
instance HsProtobuf.HasDefault OrganizationUnit
 
instance HsProtobuf.Message OrganizationUnit where
        encodeMessage _
          OrganizationUnit{organizationUnitMspIdentifier =
                             organizationUnitMspIdentifier,
                           organizationUnitOrganizationalUnitIdentifier =
                             organizationUnitOrganizationalUnitIdentifier,
                           organizationUnitCertifiersIdentifier =
                             organizationUnitCertifiersIdentifier}
          = (Hs.mconcat
               [(HsProtobuf.encodeMessageField (HsProtobuf.FieldNumber 1)
                   organizationUnitMspIdentifier),
                (HsProtobuf.encodeMessageField (HsProtobuf.FieldNumber 2)
                   organizationUnitOrganizationalUnitIdentifier),
                (HsProtobuf.encodeMessageField (HsProtobuf.FieldNumber 3)
                   organizationUnitCertifiersIdentifier)])
        decodeMessage _
          = (Hs.pure OrganizationUnit) <*>
              (HsProtobuf.at HsProtobuf.decodeMessageField
                 (HsProtobuf.FieldNumber 1))
              <*>
              (HsProtobuf.at HsProtobuf.decodeMessageField
                 (HsProtobuf.FieldNumber 2))
              <*>
              (HsProtobuf.at HsProtobuf.decodeMessageField
                 (HsProtobuf.FieldNumber 3))
        dotProto _
          = [(HsProtobuf.DotProtoField (HsProtobuf.FieldNumber 1)
                (HsProtobuf.Prim HsProtobuf.String)
                (HsProtobuf.Single "msp_identifier")
                []
                ""),
             (HsProtobuf.DotProtoField (HsProtobuf.FieldNumber 2)
                (HsProtobuf.Prim HsProtobuf.String)
                (HsProtobuf.Single "organizational_unit_identifier")
                []
                ""),
             (HsProtobuf.DotProtoField (HsProtobuf.FieldNumber 3)
                (HsProtobuf.Prim HsProtobuf.Bytes)
                (HsProtobuf.Single "certifiers_identifier")
                []
                "")]
 
instance HsJSONPB.ToJSONPB OrganizationUnit where
        toJSONPB (OrganizationUnit f1 f2 f3)
          = (HsJSONPB.object
               ["msp_identifier" .= f1, "organizational_unit_identifier" .= f2,
                "certifiers_identifier" .= f3])
        toEncodingPB (OrganizationUnit f1 f2 f3)
          = (HsJSONPB.pairs
               ["msp_identifier" .= f1, "organizational_unit_identifier" .= f2,
                "certifiers_identifier" .= f3])
 
instance HsJSONPB.FromJSONPB OrganizationUnit where
        parseJSONPB
          = (HsJSONPB.withObject "OrganizationUnit"
               (\ obj ->
                  (Hs.pure OrganizationUnit) <*> obj .: "msp_identifier" <*>
                    obj .: "organizational_unit_identifier"
                    <*> obj .: "certifiers_identifier"))
 
instance HsJSONPB.ToJSON OrganizationUnit where
        toJSON = HsJSONPB.toAesonValue
        toEncoding = HsJSONPB.toAesonEncoding
 
instance HsJSONPB.FromJSON OrganizationUnit where
        parseJSON = HsJSONPB.parseJSONPB
 
instance HsJSONPB.ToSchema OrganizationUnit where
        declareNamedSchema _
          = do let declare_msp_identifier = HsJSONPB.declareSchemaRef
               organizationUnitMspIdentifier <- declare_msp_identifier Proxy.Proxy
               let declare_organizational_unit_identifier
                     = HsJSONPB.declareSchemaRef
               organizationUnitOrganizationalUnitIdentifier <- declare_organizational_unit_identifier
                                                                 Proxy.Proxy
               let declare_certifiers_identifier = HsJSONPB.declareSchemaRef
               organizationUnitCertifiersIdentifier <- declare_certifiers_identifier
                                                         Proxy.Proxy
               let _ = Hs.pure OrganizationUnit <*>
                         HsJSONPB.asProxy declare_msp_identifier
                         <*> HsJSONPB.asProxy declare_organizational_unit_identifier
                         <*> HsJSONPB.asProxy declare_certifiers_identifier
               Hs.return
                 (HsJSONPB.NamedSchema{HsJSONPB._namedSchemaName =
                                         Hs.Just "OrganizationUnit",
                                       HsJSONPB._namedSchemaSchema =
                                         Hs.mempty{HsJSONPB._schemaParamSchema =
                                                     Hs.mempty{HsJSONPB._paramSchemaType =
                                                                 HsJSONPB.SwaggerObject},
                                                   HsJSONPB._schemaProperties =
                                                     HsJSONPB.insOrdFromList
                                                       [("msp_identifier",
                                                         organizationUnitMspIdentifier),
                                                        ("organizational_unit_identifier",
                                                         organizationUnitOrganizationalUnitIdentifier),
                                                        ("certifiers_identifier",
                                                         organizationUnitCertifiersIdentifier)]}})
 
data MSPRole = MSPRole{msproleMspIdentifier :: Hs.Text,
                       msproleRole ::
                       HsProtobuf.Enumerated Msp.MspPrincipal.MSPRole_MSPRoleType}
             deriving (Hs.Show, Hs.Eq, Hs.Ord, Hs.Generic, Hs.NFData)
 
instance HsProtobuf.Named MSPRole where
        nameOf _ = (Hs.fromString "MSPRole")
 
instance HsProtobuf.HasDefault MSPRole
 
instance HsProtobuf.Message MSPRole where
        encodeMessage _
          MSPRole{msproleMspIdentifier = msproleMspIdentifier,
                  msproleRole = msproleRole}
          = (Hs.mconcat
               [(HsProtobuf.encodeMessageField (HsProtobuf.FieldNumber 1)
                   msproleMspIdentifier),
                (HsProtobuf.encodeMessageField (HsProtobuf.FieldNumber 2)
                   msproleRole)])
        decodeMessage _
          = (Hs.pure MSPRole) <*>
              (HsProtobuf.at HsProtobuf.decodeMessageField
                 (HsProtobuf.FieldNumber 1))
              <*>
              (HsProtobuf.at HsProtobuf.decodeMessageField
                 (HsProtobuf.FieldNumber 2))
        dotProto _
          = [(HsProtobuf.DotProtoField (HsProtobuf.FieldNumber 1)
                (HsProtobuf.Prim HsProtobuf.String)
                (HsProtobuf.Single "msp_identifier")
                []
                ""),
             (HsProtobuf.DotProtoField (HsProtobuf.FieldNumber 2)
                (HsProtobuf.Prim
                   (HsProtobuf.Named (HsProtobuf.Single "MSPRoleType")))
                (HsProtobuf.Single "role")
                []
                "")]
 
instance HsJSONPB.ToJSONPB MSPRole where
        toJSONPB (MSPRole f1 f2)
          = (HsJSONPB.object ["msp_identifier" .= f1, "role" .= f2])
        toEncodingPB (MSPRole f1 f2)
          = (HsJSONPB.pairs ["msp_identifier" .= f1, "role" .= f2])
 
instance HsJSONPB.FromJSONPB MSPRole where
        parseJSONPB
          = (HsJSONPB.withObject "MSPRole"
               (\ obj ->
                  (Hs.pure MSPRole) <*> obj .: "msp_identifier" <*> obj .: "role"))
 
instance HsJSONPB.ToJSON MSPRole where
        toJSON = HsJSONPB.toAesonValue
        toEncoding = HsJSONPB.toAesonEncoding
 
instance HsJSONPB.FromJSON MSPRole where
        parseJSON = HsJSONPB.parseJSONPB
 
instance HsJSONPB.ToSchema MSPRole where
        declareNamedSchema _
          = do let declare_msp_identifier = HsJSONPB.declareSchemaRef
               msproleMspIdentifier <- declare_msp_identifier Proxy.Proxy
               let declare_role = HsJSONPB.declareSchemaRef
               msproleRole <- declare_role Proxy.Proxy
               let _ = Hs.pure MSPRole <*> HsJSONPB.asProxy declare_msp_identifier
                         <*> HsJSONPB.asProxy declare_role
               Hs.return
                 (HsJSONPB.NamedSchema{HsJSONPB._namedSchemaName =
                                         Hs.Just "MSPRole",
                                       HsJSONPB._namedSchemaSchema =
                                         Hs.mempty{HsJSONPB._schemaParamSchema =
                                                     Hs.mempty{HsJSONPB._paramSchemaType =
                                                                 HsJSONPB.SwaggerObject},
                                                   HsJSONPB._schemaProperties =
                                                     HsJSONPB.insOrdFromList
                                                       [("msp_identifier", msproleMspIdentifier),
                                                        ("role", msproleRole)]}})
 
data MSPRole_MSPRoleType = MSPRole_MSPRoleTypeMEMBER
                         | MSPRole_MSPRoleTypeADMIN
                         | MSPRole_MSPRoleTypeCLIENT
                         | MSPRole_MSPRoleTypePEER
                         | MSPRole_MSPRoleTypeORDERER
                         deriving (Hs.Show, Hs.Eq, Hs.Generic, Hs.NFData)
 
instance HsProtobuf.Named MSPRole_MSPRoleType where
        nameOf _ = (Hs.fromString "MSPRole_MSPRoleType")
 
instance HsProtobuf.HasDefault MSPRole_MSPRoleType
 
instance Hs.Bounded MSPRole_MSPRoleType where
        minBound = MSPRole_MSPRoleTypeMEMBER
        maxBound = MSPRole_MSPRoleTypeORDERER
 
instance Hs.Ord MSPRole_MSPRoleType where
        compare x y
          = Hs.compare (HsProtobuf.fromProtoEnum x)
              (HsProtobuf.fromProtoEnum y)
 
instance HsProtobuf.ProtoEnum MSPRole_MSPRoleType where
        toProtoEnumMay 0 = Hs.Just MSPRole_MSPRoleTypeMEMBER
        toProtoEnumMay 1 = Hs.Just MSPRole_MSPRoleTypeADMIN
        toProtoEnumMay 2 = Hs.Just MSPRole_MSPRoleTypeCLIENT
        toProtoEnumMay 3 = Hs.Just MSPRole_MSPRoleTypePEER
        toProtoEnumMay 4 = Hs.Just MSPRole_MSPRoleTypeORDERER
        toProtoEnumMay _ = Hs.Nothing
        fromProtoEnum (MSPRole_MSPRoleTypeMEMBER) = 0
        fromProtoEnum (MSPRole_MSPRoleTypeADMIN) = 1
        fromProtoEnum (MSPRole_MSPRoleTypeCLIENT) = 2
        fromProtoEnum (MSPRole_MSPRoleTypePEER) = 3
        fromProtoEnum (MSPRole_MSPRoleTypeORDERER) = 4
 
instance HsJSONPB.ToJSONPB MSPRole_MSPRoleType where
        toJSONPB x _ = HsJSONPB.enumFieldString x
        toEncodingPB x _ = HsJSONPB.enumFieldEncoding x
 
instance HsJSONPB.FromJSONPB MSPRole_MSPRoleType where
        parseJSONPB (HsJSONPB.String "MEMBER")
          = Hs.pure MSPRole_MSPRoleTypeMEMBER
        parseJSONPB (HsJSONPB.String "ADMIN")
          = Hs.pure MSPRole_MSPRoleTypeADMIN
        parseJSONPB (HsJSONPB.String "CLIENT")
          = Hs.pure MSPRole_MSPRoleTypeCLIENT
        parseJSONPB (HsJSONPB.String "PEER")
          = Hs.pure MSPRole_MSPRoleTypePEER
        parseJSONPB (HsJSONPB.String "ORDERER")
          = Hs.pure MSPRole_MSPRoleTypeORDERER
        parseJSONPB v = (HsJSONPB.typeMismatch "MSPRole_MSPRoleType" v)
 
instance HsJSONPB.ToJSON MSPRole_MSPRoleType where
        toJSON = HsJSONPB.toAesonValue
        toEncoding = HsJSONPB.toAesonEncoding
 
instance HsJSONPB.FromJSON MSPRole_MSPRoleType where
        parseJSON = HsJSONPB.parseJSONPB
 
instance HsProtobuf.Finite MSPRole_MSPRoleType
 
data MSPIdentityAnonymity = MSPIdentityAnonymity{mspidentityAnonymityAnonymityType
                                                 ::
                                                 HsProtobuf.Enumerated
                                                   Msp.MspPrincipal.MSPIdentityAnonymity_MSPIdentityAnonymityType}
                          deriving (Hs.Show, Hs.Eq, Hs.Ord, Hs.Generic, Hs.NFData)
 
instance HsProtobuf.Named MSPIdentityAnonymity where
        nameOf _ = (Hs.fromString "MSPIdentityAnonymity")
 
instance HsProtobuf.HasDefault MSPIdentityAnonymity
 
instance HsProtobuf.Message MSPIdentityAnonymity where
        encodeMessage _
          MSPIdentityAnonymity{mspidentityAnonymityAnonymityType =
                                 mspidentityAnonymityAnonymityType}
          = (Hs.mconcat
               [(HsProtobuf.encodeMessageField (HsProtobuf.FieldNumber 1)
                   mspidentityAnonymityAnonymityType)])
        decodeMessage _
          = (Hs.pure MSPIdentityAnonymity) <*>
              (HsProtobuf.at HsProtobuf.decodeMessageField
                 (HsProtobuf.FieldNumber 1))
        dotProto _
          = [(HsProtobuf.DotProtoField (HsProtobuf.FieldNumber 1)
                (HsProtobuf.Prim
                   (HsProtobuf.Named (HsProtobuf.Single "MSPIdentityAnonymityType")))
                (HsProtobuf.Single "anonymity_type")
                []
                "")]
 
instance HsJSONPB.ToJSONPB MSPIdentityAnonymity where
        toJSONPB (MSPIdentityAnonymity f1)
          = (HsJSONPB.object ["anonymity_type" .= f1])
        toEncodingPB (MSPIdentityAnonymity f1)
          = (HsJSONPB.pairs ["anonymity_type" .= f1])
 
instance HsJSONPB.FromJSONPB MSPIdentityAnonymity where
        parseJSONPB
          = (HsJSONPB.withObject "MSPIdentityAnonymity"
               (\ obj ->
                  (Hs.pure MSPIdentityAnonymity) <*> obj .: "anonymity_type"))
 
instance HsJSONPB.ToJSON MSPIdentityAnonymity where
        toJSON = HsJSONPB.toAesonValue
        toEncoding = HsJSONPB.toAesonEncoding
 
instance HsJSONPB.FromJSON MSPIdentityAnonymity where
        parseJSON = HsJSONPB.parseJSONPB
 
instance HsJSONPB.ToSchema MSPIdentityAnonymity where
        declareNamedSchema _
          = do let declare_anonymity_type = HsJSONPB.declareSchemaRef
               mspidentityAnonymityAnonymityType <- declare_anonymity_type
                                                      Proxy.Proxy
               let _ = Hs.pure MSPIdentityAnonymity <*>
                         HsJSONPB.asProxy declare_anonymity_type
               Hs.return
                 (HsJSONPB.NamedSchema{HsJSONPB._namedSchemaName =
                                         Hs.Just "MSPIdentityAnonymity",
                                       HsJSONPB._namedSchemaSchema =
                                         Hs.mempty{HsJSONPB._schemaParamSchema =
                                                     Hs.mempty{HsJSONPB._paramSchemaType =
                                                                 HsJSONPB.SwaggerObject},
                                                   HsJSONPB._schemaProperties =
                                                     HsJSONPB.insOrdFromList
                                                       [("anonymity_type",
                                                         mspidentityAnonymityAnonymityType)]}})
 
data MSPIdentityAnonymity_MSPIdentityAnonymityType = MSPIdentityAnonymity_MSPIdentityAnonymityTypeNOMINAL
                                                   | MSPIdentityAnonymity_MSPIdentityAnonymityTypeANONYMOUS
                                                   deriving (Hs.Show, Hs.Eq, Hs.Generic, Hs.NFData)
 
instance HsProtobuf.Named
         MSPIdentityAnonymity_MSPIdentityAnonymityType where
        nameOf _
          = (Hs.fromString "MSPIdentityAnonymity_MSPIdentityAnonymityType")
 
instance HsProtobuf.HasDefault
         MSPIdentityAnonymity_MSPIdentityAnonymityType
 
instance Hs.Bounded MSPIdentityAnonymity_MSPIdentityAnonymityType
         where
        minBound = MSPIdentityAnonymity_MSPIdentityAnonymityTypeNOMINAL
        maxBound = MSPIdentityAnonymity_MSPIdentityAnonymityTypeANONYMOUS
 
instance Hs.Ord MSPIdentityAnonymity_MSPIdentityAnonymityType where
        compare x y
          = Hs.compare (HsProtobuf.fromProtoEnum x)
              (HsProtobuf.fromProtoEnum y)
 
instance HsProtobuf.ProtoEnum
         MSPIdentityAnonymity_MSPIdentityAnonymityType where
        toProtoEnumMay 0
          = Hs.Just MSPIdentityAnonymity_MSPIdentityAnonymityTypeNOMINAL
        toProtoEnumMay 1
          = Hs.Just MSPIdentityAnonymity_MSPIdentityAnonymityTypeANONYMOUS
        toProtoEnumMay _ = Hs.Nothing
        fromProtoEnum
          (MSPIdentityAnonymity_MSPIdentityAnonymityTypeNOMINAL) = 0
        fromProtoEnum
          (MSPIdentityAnonymity_MSPIdentityAnonymityTypeANONYMOUS) = 1
 
instance HsJSONPB.ToJSONPB
         MSPIdentityAnonymity_MSPIdentityAnonymityType where
        toJSONPB x _ = HsJSONPB.enumFieldString x
        toEncodingPB x _ = HsJSONPB.enumFieldEncoding x
 
instance HsJSONPB.FromJSONPB
         MSPIdentityAnonymity_MSPIdentityAnonymityType where
        parseJSONPB (HsJSONPB.String "NOMINAL")
          = Hs.pure MSPIdentityAnonymity_MSPIdentityAnonymityTypeNOMINAL
        parseJSONPB (HsJSONPB.String "ANONYMOUS")
          = Hs.pure MSPIdentityAnonymity_MSPIdentityAnonymityTypeANONYMOUS
        parseJSONPB v
          = (HsJSONPB.typeMismatch
               "MSPIdentityAnonymity_MSPIdentityAnonymityType"
               v)
 
instance HsJSONPB.ToJSON
         MSPIdentityAnonymity_MSPIdentityAnonymityType where
        toJSON = HsJSONPB.toAesonValue
        toEncoding = HsJSONPB.toAesonEncoding
 
instance HsJSONPB.FromJSON
         MSPIdentityAnonymity_MSPIdentityAnonymityType where
        parseJSON = HsJSONPB.parseJSONPB
 
instance HsProtobuf.Finite
         MSPIdentityAnonymity_MSPIdentityAnonymityType
 
data CombinedPrincipal = CombinedPrincipal{combinedPrincipalPrincipals
                                           :: Hs.Vector Msp.MspPrincipal.MSPPrincipal}
                       deriving (Hs.Show, Hs.Eq, Hs.Ord, Hs.Generic, Hs.NFData)
 
instance HsProtobuf.Named CombinedPrincipal where
        nameOf _ = (Hs.fromString "CombinedPrincipal")
 
instance HsProtobuf.HasDefault CombinedPrincipal
 
instance HsProtobuf.Message CombinedPrincipal where
        encodeMessage _
          CombinedPrincipal{combinedPrincipalPrincipals =
                              combinedPrincipalPrincipals}
          = (Hs.mconcat
               [(HsProtobuf.encodeMessageField (HsProtobuf.FieldNumber 1)
                   (Hs.coerce @(Hs.Vector Msp.MspPrincipal.MSPPrincipal)
                      @(HsProtobuf.NestedVec Msp.MspPrincipal.MSPPrincipal)
                      combinedPrincipalPrincipals))])
        decodeMessage _
          = (Hs.pure CombinedPrincipal) <*>
              (Hs.coerce
                 @(_ (HsProtobuf.NestedVec Msp.MspPrincipal.MSPPrincipal))
                 @(_ (Hs.Vector Msp.MspPrincipal.MSPPrincipal))
                 (HsProtobuf.at HsProtobuf.decodeMessageField
                    (HsProtobuf.FieldNumber 1)))
        dotProto _
          = [(HsProtobuf.DotProtoField (HsProtobuf.FieldNumber 1)
                (HsProtobuf.Repeated
                   (HsProtobuf.Named (HsProtobuf.Single "MSPPrincipal")))
                (HsProtobuf.Single "principals")
                []
                "")]
 
instance HsJSONPB.ToJSONPB CombinedPrincipal where
        toJSONPB (CombinedPrincipal f1)
          = (HsJSONPB.object ["principals" .= f1])
        toEncodingPB (CombinedPrincipal f1)
          = (HsJSONPB.pairs ["principals" .= f1])
 
instance HsJSONPB.FromJSONPB CombinedPrincipal where
        parseJSONPB
          = (HsJSONPB.withObject "CombinedPrincipal"
               (\ obj -> (Hs.pure CombinedPrincipal) <*> obj .: "principals"))
 
instance HsJSONPB.ToJSON CombinedPrincipal where
        toJSON = HsJSONPB.toAesonValue
        toEncoding = HsJSONPB.toAesonEncoding
 
instance HsJSONPB.FromJSON CombinedPrincipal where
        parseJSON = HsJSONPB.parseJSONPB
 
instance HsJSONPB.ToSchema CombinedPrincipal where
        declareNamedSchema _
          = do let declare_principals = HsJSONPB.declareSchemaRef
               combinedPrincipalPrincipals <- declare_principals Proxy.Proxy
               let _ = Hs.pure CombinedPrincipal <*>
                         HsJSONPB.asProxy declare_principals
               Hs.return
                 (HsJSONPB.NamedSchema{HsJSONPB._namedSchemaName =
                                         Hs.Just "CombinedPrincipal",
                                       HsJSONPB._namedSchemaSchema =
                                         Hs.mempty{HsJSONPB._schemaParamSchema =
                                                     Hs.mempty{HsJSONPB._paramSchemaType =
                                                                 HsJSONPB.SwaggerObject},
                                                   HsJSONPB._schemaProperties =
                                                     HsJSONPB.insOrdFromList
                                                       [("principals",
                                                         combinedPrincipalPrincipals)]}})